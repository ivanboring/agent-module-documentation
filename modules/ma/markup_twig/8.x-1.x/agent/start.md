<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Markup Twig (markup_twig) — agent index

Extends the **markup field with Twig**. Version **8.x-1.0-rc7**.

**Security (verified):** renders via **sandboxed** Twig (`#type => 'inline_template'`) — SSTI→RCE
blocked; editing requires **`administer markup fields`** (field disabled without it). Correct pattern
(same as `snippet_manager`): sandboxed + admin-gated. The permission is **high-trust** (author writes
site-rendering Twig) — developers/trusted builders only, **never content editors**.