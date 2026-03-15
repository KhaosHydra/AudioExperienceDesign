import { useRef, useEffect, useCallback } from 'react';

const WS_URL = 'ws://localhost:8080';

export default function useOSC() {
  const ws = useRef(null);
  const connected = useRef(false);

  useEffect(() => {
    function connect() {
      try {
        ws.current = new WebSocket(WS_URL);
        ws.current.onopen = () => { connected.current = true; console.log('[OSC] connected'); };
        ws.current.onclose = () => { connected.current = false; setTimeout(connect, 2000); };
        ws.current.onerror = () => { connected.current = false; };
      } catch (e) { setTimeout(connect, 2000); }
    }
    connect();
    return () => { if (ws.current) ws.current.close(); };
  }, []);

  // FIX: coerce all numeric args to floats before sending
  // Prevents bridge from ever sending OSC int type, which MaxMSP expr $f3 can't read
  const send = useCallback((address, ...args) => {
    if (!ws.current || !connected.current) return;
    const sanitized = args.map(a => {
      const n = parseFloat(a);
      if (!isNaN(n)) return Number.isInteger(n) ? n.toFixed(1) : String(a);
      return String(a);
    });
    const msg = `${address} ${sanitized.join(' ')}`;
    try { ws.current.send(msg); } catch (e) {}
  }, []);

  return { send };
}
