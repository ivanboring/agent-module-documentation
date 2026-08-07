<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# AI File to Text (ai_file_to_text) — agent index

Extracts text from **Word, ODT, ODS, PDF, CSV, TXT** as **automators and agents** for the AI module.
Version **1.0.0**. Core `^10.3 || ^11`. Depends on `ai:ai`.

First step of every practical AI pipeline — without it an integration is limited to content already
in Drupal fields. Automators/agents rather than a service means extraction composes into a larger
flow without code.

**Two things belong in any recommendation:** **document parsing is an attack surface** (PDF and
Office parsers are historically vulnerability-rich, and the input is an uploaded file — know which
library handles each format and keep it patched); and **extraction moves content across an access
boundary** — text from a private document handed to a hosted model has left the site under that
provider's terms. That is the point at which document contents become a third-party transfer.