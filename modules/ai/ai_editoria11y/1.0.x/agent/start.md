<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# AI Editoria11y — agent index

Adds **"Fix with AI" buttons to Editoria11y** accessibility checks (via the AI module). Depends on `editoria11y`,
core `ckeditor5`, `ai`, `ai_ckeditor`. Provides permissions. Version **1.0.0-beta1**. Core `^10.3||^11`.

AI/accessibility — **sends content to the AI provider** (egress; key as a secret via AI/Key); **review AI
suggestions** before applying. No access role beyond permission.
