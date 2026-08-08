<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Snippet Manager (snippet_manager) — agent index

Manages reusable **Twig snippets as entities** (variables, a `snippet()` embed function), renderable
as blocks. Version **3.0.2**.

**Security:** snippets render via **sandboxed** Twig (`inline_template`) — SSTI→RCE route blocked.
Creating/editing needs **`administer snippets`**, a **high-trust** capability (author writes
site-rendering Twig, embeds snippets/views/blocks) — grant to developers/trusted builders only,
**never content editors**, like theme-template editing.