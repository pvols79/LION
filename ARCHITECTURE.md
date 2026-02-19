# L.I.O.N. Architecture

L.I.O.N. is designed as a modular local AI platform separating orchestration, models, and proprietary lesson logic.

---

## High-Level Overview

User → CLI/WebUI → Engine → Model → Bible Provider → Output Formatter

---

## Components

### 1. CLI Interface
Primary lightweight interaction method.

Allows:
- model selection
- passage input
- output format selection

---

### 2. Optional WebUI
HTTPS-only interface built for:

- local browser use
- LAN/WAN deployment
- future PWA/mobile expansion

---

### 3. Engine (Proprietary)

Handles:

- prompt orchestration
- lesson workflow logic
- structured generation rules
- validation enforcement

Distributed separately as compiled binaries.

---

### 4. Model Layer

User-supplied LLM via:

- Ollama
- llama.cpp (future support)

No models are redistributed.

---

### 5. Bible Provider Layer

Supports:

- reference-only mode
- ESV API retrieval
- future translation providers

Scripture retrieval occurs outside the model to prevent hallucination.

---

### 6. HTTPS Layer

Provided by Caddy.

Modes:

- Cloudflare DNS-01 certificates
- mkcert localhost certificates

HTTPS is always enforced.

---

## Data Flow

1. User selects lesson parameters.
2. Engine creates internal coverage plan.
3. Engine retrieves Scripture text.
4. Model generates structured lesson.
5. Output formatted and exported.

---

## Design Goals

- Local-first AI
- Deterministic structure
- Scripture integrity
- Modular extensibility
- Optional UI
- Secure by default
