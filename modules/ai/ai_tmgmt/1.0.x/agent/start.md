<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# AI Translator (ai_tmgmt) — agent index

TMGMT translator plugin backed by the **AI** module's providers. Depends on `ai ^1.0.4` and
`tmgmt ^1.16`. Core requirement `^10 || ^11`. **Release is 1.0.0-beta6 — beta.**
Configured through TMGMT's own translator collection (`entity.tmgmt_translator.collection`) —
no separate admin surface.

Key facts:
- Provider, model and credentials live in the **`ai`** module; this contributes only the TMGMT
  translator plugin (`src/Plugin/`).
- **A local model changes the data-protection argument.** The usual objection to machine
  translation — unpublished content leaving the building — disappears with a locally hosted model
  via Ollama, while the TMGMT workflow stays identical. That is the strongest reason to prefer
  this over a hosted MT connector for sensitive content.
- **Three things to state when recommending it:**
  1. LLM output is a **draft**; TMGMT's review/acceptance step is where that gets enforced — do
     not configure auto-accept.
  2. Hosted providers bill **per token**, so job size is a direct cost.
  3. Quality varies sharply by **language pair** — evaluate on the site's actual pairs.
- Compare `ant_bulk` (wave 59), which bulk-drives Auto Node Translate; this integrates with
  TMGMT's job/review model instead.
