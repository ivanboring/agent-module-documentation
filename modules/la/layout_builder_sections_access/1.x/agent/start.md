<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Layout Builder Sections Access (layout_builder_sections_access) — agent index

Per-section Layout Builder options: **deactivate** a section or **restrict rendering to roles**.
Version **1.0.0**.

**Layer:** it controls whether a section is **rendered** by role (skipped server-side, so restricted
content isn't in the HTML for non-matching roles — better than CSS hide). But it's section-render
control, **not deep access control** — back sensitive content with the block's/entity's own access,
and confirm it isn't reachable via its own URL/JSON:API/another placement.