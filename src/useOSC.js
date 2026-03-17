import { useRef, useEffect, useCallback } from 'react';

const WS_URL = 'ws://localhost:8080';

export default function useOSC() {
  const ws = useRef(null);
  const connected = useRef(false);
  const reconnectTimer = useRef(null);
  const shouldReconnect = useRef(true);

  useEffect(() => {
    function connect() {
      if (!shouldReconnect.current) return;

      try {
        const socket = new WebSocket(WS_URL);
        ws.current = socket;

        socket.onopen = () => {
          connected.current = true;
          console.log('[OSC] connected');
        };

        socket.onclose = () => {
          connected.current = false;
          if (!shouldReconnect.current) return;
          reconnectTimer.current = window.setTimeout(connect, 2000);
        };

        socket.onerror = () => {
          connected.current = false;
        };
      } catch (e) {
        if (!shouldReconnect.current) return;
        reconnectTimer.current = window.setTimeout(connect, 2000);
      }
    }

    connect();

    return () => {
      shouldReconnect.current = false;
      connected.current = false;

      if (reconnectTimer.current) {
        window.clearTimeout(reconnectTimer.current);
      }

      if (ws.current && ws.current.readyState < 2) {
        ws.current.close();
      }
    };
  }, []);

  // Force all numeric args to float-like strings so the bridge always emits OSC float type.
  const send = useCallback((address, ...args) => {
    if (!ws.current || ws.current.readyState !== WebSocket.OPEN || !connected.current) return;

    const sanitized = args.map((a) => {
      const n = parseFloat(a);
      if (!Number.isNaN(n)) return Number.isInteger(n) ? n.toFixed(1) : String(a);
      return String(a);
    });

    const msg = `${address} ${sanitized.join(' ')}`;

    try {
      console.log('[frontend send]', msg);
      ws.current.send(msg);
    } catch (e) {
      console.warn('[OSC] send failed', e);
    }
  }, []);

  return { send };
}
