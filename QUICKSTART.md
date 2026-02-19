# L.I.O.N. Quick Start

This guide gets L.I.O.N. running in minutes.

---

## 1. Requirements

Install:

- Docker
- Docker Compose (v2)
- Git

Optional (recommended):

- NVIDIA GPU + drivers
- NVIDIA Container Toolkit

---

## 2. Clone Repository

git clone https://github.com/YOURNAME/lion.git
cd lion

---

## 3. Start L.I.O.N.

CLI mode:

./up.sh

WebUI mode:

./up.sh --web

GPU mode:

./up.sh --gpu-nvidia

WebUI + GPU:

./up.sh --web --gpu-nvidia

---

## 4. Download a Model

Example using Ollama:

ollama pull llama3.1:8b

Recommended tested model:

ajindal/llama3.1-storm:8b

---

## 5. Access WebUI

If enabled:

https://localhost

or your configured hostname.

---

## 6. Generate a Lesson

Provide:

- Current passage
- Previous passage
- Model selection
- Output format

Export lesson as:

- DOCX
- Markdown
- TXT

---

## Troubleshooting

Run diagnostics:

./scripts/doctor.sh
