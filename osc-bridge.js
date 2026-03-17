/**
 * osc-bridge.js — WebSocket → OSC/UDP bridge for MaxMSP
 * Sends proper OSC binary packets that udpreceive can parse
 */
import { WebSocketServer } from 'ws';
import dgram from 'dgram';

const WS_PORT = 8080;
const UDP_HOST = '127.0.0.1';
const UDP_PORT = 7374;

const udp = dgram.createSocket('udp4');
const wss = new WebSocketServer({ port: WS_PORT });

// OSC string: pad to 4-byte boundary, null-terminated
function oscString(str) {
  const buf = Buffer.from(String(str) + '\0');
  const remainder = buf.length % 4;
  return remainder ? Buffer.concat([buf, Buffer.alloc(4 - remainder)]) : buf;
}

// OSC float32
function oscFloat(val) {
  const buf = Buffer.alloc(4);
  buf.writeFloatBE(val, 0);
  return buf;
}

// Build an OSC message from address + args
// Always send numeric values as float so MaxMSP unpack 0. 0. 0. receives floats.
function buildOSC(address, args) {
  let typeTag = ',';
  const argBuffers = [];

  for (const arg of args) {
    const num = Number(arg);
    if (Number.isNaN(num)) {
      typeTag += 's';
      argBuffers.push(oscString(arg));
    } else {
      typeTag += 'f';
      argBuffers.push(oscFloat(num));
    }
  }

  return Buffer.concat([
    oscString(address),
    oscString(typeTag),
    ...argBuffers,
  ]);
}

wss.on('connection', (ws) => {
  console.log('[bridge] React connected');

  ws.on('message', (data) => {
    const msg = data.toString().trim();
    if (!msg) return;

    const parts = msg.split(/\s+/);
    const address = parts[0];
    const args = parts.slice(1);

    try {
      const packet = buildOSC(address, args);
      udp.send(packet, 0, packet.length, UDP_PORT, UDP_HOST);
      console.log('[bridge] raw:', msg);
      console.log('[bridge] sent:', address, args);
    } catch (e) {
      console.log('[bridge] error:', e.message);
    }
  });

  ws.on('close', () => console.log('[bridge] React disconnected'));
});

console.log(`[bridge] WebSocket on ws://localhost:${WS_PORT}`);
console.log(`[bridge] OSC/UDP → ${UDP_HOST}:${UDP_PORT}`);
console.log('[bridge] MaxMSP: use udpreceive 7374');
