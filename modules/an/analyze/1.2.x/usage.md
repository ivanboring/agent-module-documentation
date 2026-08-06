<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Analyze adds an "Analyze" tab to entities and a plugin API for putting information on it, with submodules supplying content statistics, page views and Google Analytics data.

---

The problem it solves is where per-entity information goes. An editor looking at an article may want to know how many times it has been viewed, how readable it is, whether its images have alt text, how it performs in search, when it was last reviewed, or how many internal links point at it — and each of those currently arrives as a separate module adding a separate block, a separate tab, or a column in a listing somewhere else. A shared tab with a plugin API means each of those is a plugin rather than an interface decision, and the editor learns one place to look. That is a small piece of architecture with a disproportionate effect on whether such information gets used, because information an editor has to go and find is information they do not have. Version **1.2.1** on core **`^10.3 | ^11`** — note the single pipe, which is not valid Composer OR syntax and is worth checking behaves as intended — with `analyze_plugin_example` documenting the API. Two things worth attaching. **The tab is per entity and the data usually is not free**: a plugin fetching analytics for the entity being viewed makes an external request on an administrative page load, so caching and a failure path belong in the plugin rather than being assumed. And **an Analyze tab is a good place for information and a poor place for a control** — its value is that an editor can look without changing anything, so a plugin that offers actions is competing with the entity's own operations rather than complementing them.

---

- Show page views on an article's tab.
- Display content statistics per entity.
- Show Google Analytics data for a node.
- Add a readability score to the Analyze tab.
- Give editors per-entity insights.
- Show internal link counts for a page.
- Add SEO information to an entity.
- Display last-reviewed information.
- Build a custom analysis plugin.
- Show accessibility findings per node.
- Add word count to an entity's tab.
- Show engagement data to editors.
- Provide one place for entity information.
- Add a content audit plugin.
- Show media usage for a node.
- Display translation status per entity.
- Add a custom metric to the Analyze tab.
- Give editors context before editing.
