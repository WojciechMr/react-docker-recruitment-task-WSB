# WSB-NLU Recruitment Task — React + Docker (Vite)

Prosta aplikacja React wygenerowana przy użyciu Vite, skonteneryzowana z użyciem Dockera zgodnie z dobrymi praktykami (multi-stage build: Node.js -> Nginx).

## Wymagania
- Docker

## Struktura rozwiązania
- `Dockerfile` - multi-stage build (build w Node, runtime w Nginx)
- `nginx.conf` - konfiguracja Nginx dla SPA (`try_files ... /index.html`)
- `.dockerignore` - ogranicza kontekst budowania obrazu

## Uruchomienie lokalne (dev)
```bash
npm install
npm run dev
