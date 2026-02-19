# L.I.O.N.
## Learn • Interpret • Outline • Nurture

**L.I.O.N.** is an AI-assisted Bible lesson development platform designed for teachers and curriculum developers who want to use local large language models (LLMs) to assist in lesson preparation while maintaining control over accuracy, formatting, and theological tone.

---

## Overview

L.I.O.N. provides a local, subscription-free alternative to commercial generative AI platforms for developing structured Bible lesson materials.

Many curriculum developers experimenting with generative AI encounter challenges such as:

- maintaining doctrinal accuracy
- preserving teaching tone
- enforcing consistent formatting
- preventing hallucinated Scripture text

This project grew out of a personal desire to run a **local AI model** dedicated specifically to lesson preparation.

Commercial AI platforms can be helpful but often require recurring subscriptions and extensive verification of generated Scripture. L.I.O.N. combines local AI execution, engineered prompts, and controlled Scripture retrieval to provide a structured workflow designed to assist faithful teaching.

---

## What L.I.O.N. *Is*

- A **Docker-based platform** for running local AI lesson generation
- A structured workflow for Bible lesson development
- A prompt-driven lesson compiler
- A secure interface between LLMs and Scripture sources
- A customizable prompt system
- A local-first AI environment with no subscription required

---

## What L.I.O.N. *Is NOT*

### Not a Large Language Model
L.I.O.N. does **not** distribute AI models.  
Users download models independently using Ollama.

### Not an AI Bible
L.I.O.N. does not replace Scripture or interpret Scripture authoritatively.  
It is a tool that assists lesson development using structured prompts and user-provided Bible sources.

### Not a Scripture Distributor
L.I.O.N. does not ship copyrighted Bible translations.  
Users supply their own licensed access where required.

---

## Hardware Requirements

### Minimum
- Modern CPU
- 16GB RAM
- CPU inference supported (slow)

### Recommended
- NVIDIA RTX 4060 or newer
- 8GB VRAM minimum
- 32GB system RAM recommended

GPU acceleration significantly improves lesson generation speed.

---

## GPU Setup (NVIDIA)

Install NVIDIA Container Toolkit:

https://docs.nvidia.com/datacenter/cloud-native/container-toolkit/install-guide.html

Start with GPU acceleration:

```bash
./up.sh --gpu-nvidia
