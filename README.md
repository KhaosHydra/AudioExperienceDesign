# Sound Room (React + Vite)

Interactive audio room prototype converted into a full React + Vite project.

## Run

```bash
npm install
npm run dev
```

## Build

```bash
npm run build
npm run preview
```

## Notes

- Object-to-layer mapping is emitted in `audioState.layers`.
- Selected object panel now resolves layer info by `instanceId` to prevent lookup errors.
