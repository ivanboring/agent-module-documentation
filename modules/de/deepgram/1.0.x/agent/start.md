<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Deepgram — agent index

A **Deepgram AI provider (Speech-to-Text + Text-to-Speech)** for the AI module. Depends on `ai`, `key`. Version
**1.0.0-beta2**. Core `^10.2||^11`.

AI/integration — **API key via the Key module** (correct secret handling); audio/text **sent to Deepgram**
(egress — voice can be sensitive; confirm acceptable, HTTPS). No access role.
