<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# AI Content Suggestions (ai_content_suggestions) — agent index

Passes content to a configured **AI provider** for editorial suggestions (title/summary/tone).
Version **1.5.0**. Built on the AI module.

**Security:** provider key is a credential (keep out of plain config); content **leaves your infra**
to the AI provider (governance decision for confidential content).