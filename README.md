# L.I.O.N.
## Learn • Interpret • Outline • Nurture

**L.I.O.N.** is an AI-assisted Bible lesson development platform designed for teachers, pastors, and curriculum developers who want to use local large language models (LLMs) to create structured, exegetical lesson material grounded in Scripture.

The project was born from a practical need: developing Bible lessons with AI while maintaining **accuracy, theological clarity, formatting control, and trustworthiness of Scripture**.

---

## Why L.I.O.N. Exists

Many curriculum developers are beginning to experiment with commercial generative AI tools. While powerful, these platforms introduce several challenges:

- Subscription costs
- Limited formatting control
- Difficulty enforcing structured lesson output
- Scripture hallucination or paraphrasing
- Lack of transparency in model behavior

L.I.O.N. provides an alternative:

- Run AI **locally**
- Maintain control over prompts and workflow
- Integrate Scripture retrieval safely
- Produce repeatable, structured lesson plans

This platform enables AI assistance **without requiring recurring subscriptions**.

---

## What L.I.O.N. Is

L.I.O.N. is a **pre-packaged platform** built using Docker that provides:

- Local LLM orchestration
- Structured lesson generation workflows
- Engineered prompts for expository lesson creation
- Bible text retrieval integration
- CLI and optional WebUI interfaces
- Exportable lesson formats (DOCX, Markdown, TXT)

Users may customize prompts or create their own workflows.

---

## What L.I.O.N. Is NOT

**L.I.O.N. is NOT a Large Language Model.**

No models are distributed with this project. Users select and download models independently.

**L.I.O.N. is NOT an AI Bible.**

It does not replace Scripture or interpret Scripture authoritatively. It is a tool assisting lesson preparation using user-chosen AI models.

---

## Hardware Guidance

L.I.O.N. can run CPU-only, but performance will be slow.

Recommended hardware:

- NVIDIA RTX 4060 or better
- Minimum 8GB VRAM
- 16–32GB system RAM recommended

GPU acceleration dramatically improves lesson generation speed.

---

## GPU Setup (NVIDIA)

Install NVIDIA Container Toolkit, then start L.I.O.N. with GPU support:

./up.sh --gpu-nvidia

or with WebUI:

./up.sh --web --gpu-nvidia

---

## HTTPS by Default

L.I.O.N. always serves the WebUI over HTTPS.

Two modes are supported:

### 1. Cloudflare DNS-01 (Default)

Used when exposing L.I.O.N. on LAN or WAN.

Requires:
- Domain name
- Cloudflare DNS
- Cloudflare API token

The system automatically validates domain ownership using ACME DNS challenges.

### 2. Localhost Fallback (mkcert)

If no domain is configured:

- Generates trusted local certificates
- Works securely on localhost
- No Internet exposure required

---

## Bible Text Providers

L.I.O.N. supports multiple Scripture modes.

### Reference-Only Mode (Default)
No API key required. Lessons include references without quoted text.

### ESV API Mode
Requires a personal API key from Crossway.

Users must provide their own key. The key is never distributed with this project.

---

## Open Platform, Proprietary Engine

This repository contains the open L.I.O.N. platform:

- deployment
- configuration
- interfaces
- tooling

The lesson-generation engine is distributed separately as prebuilt binaries.

See:

engine/README.md

---

## Quick Start

Clone the repository:

git clone https://github.com/YOURNAME/lion.git
cd lion

Start platform:

./up.sh

Start with WebUI:

./up.sh --web

---

## Philosophy

L.I.O.N. exists to assist faithful teaching — not replace it.

AI can help structure ideas, summarize themes, and organize lessons, but Scripture remains the authority. Every generated lesson should be reviewed prayerfully and carefully by the teacher.

---

## License

Platform code is released under the Apache-2.0 License.

Models, Bible texts, and proprietary engine components are governed by their respective licenses.

---

## Disclaimer

L.I.O.N. generates educational material using AI. Users are responsible for verifying theological accuracy and Scripture usage.
