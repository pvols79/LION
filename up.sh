#!/usr/bin/env bash
set -euo pipefail

MODE="${1:-core}"

mkdir -p output prompts config certs

# Default: core only
COMPOSE_ARGS=(-f compose.yml)

if [[ "$MODE" == "--web" ]]; then
  COMPOSE_ARGS+=(-f compose.web.yml)

  # DNS-first default:
  # If LESSON_HOSTNAME is set, bind on 0.0.0.0 and use DNS mode.
  # If not set, fallback to mkcert on localhost only.
  if [[ -n "${LESSON_HOSTNAME:-}" ]]; then
    export TLS_MODE="${TLS_MODE:-dns}"
    export CADDY_BIND_IP="${CADDY_BIND_IP:-0.0.0.0}"
    echo "WebUI enabled: DNS-first HTTPS for ${LESSON_HOSTNAME}"
  else
    export TLS_MODE="mkcert"
    export CADDY_BIND_IP="127.0.0.1"
    echo "WebUI enabled: mkcert localhost fallback (https://localhost)"
    echo "NOTE: Put mkcert certs in ./certs/localhost.pem and ./certs/localhost-key.pem"
  fi
fi

if [[ "${2:-}" == "--gpu-nvidia" || "$MODE" == "--gpu-nvidia" ]]; then
  COMPOSE_ARGS+=(-f compose.gpu.nvidia.yml)
  echo "NVIDIA GPU passthrough enabled for Ollama (requires NVIDIA Container Toolkit)."
fi

docker compose "${COMPOSE_ARGS[@]}" up -d --build
echo "Done."
