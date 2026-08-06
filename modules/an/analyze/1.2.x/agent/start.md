<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Analyze (analyze) — agent index

Adds an **"Analyze" tab to entities** and a **plugin API** for putting information on it.
Submodules: `analyze_basic_content_info`, `analyze_page_views`, `analyze_google_analytics`,
`analyze_plugin_example` (documents the API). Version **1.2.1**.
**Core requirement is written `^10.3 | ^11`** — a single pipe, not valid Composer OR syntax. Worth
checking it behaves as intended.

**The problem it solves is where per-entity information goes.** Views, readability, alt-text
coverage, search performance, last-reviewed date, inbound internal links — each currently arrives as
a separate module adding a separate block, tab or column somewhere else. A shared tab with a plugin
API makes each of those **a plugin rather than an interface decision**, and **the editor learns one
place to look**. Small architecture, disproportionate effect — information an editor has to go and
find is information they do not have.

**Two things worth attaching:**
1. **The tab is per entity and the data usually is not free.** A plugin fetching analytics for the
   entity being viewed makes an **external request on an administrative page load** — caching and a
   failure path belong **in the plugin**, not assumed.
2. **An Analyze tab is a good place for information and a poor place for a control.** Its value is
   that an editor can **look without changing anything**; a plugin offering actions competes with
   the entity's own operations rather than complementing them.
