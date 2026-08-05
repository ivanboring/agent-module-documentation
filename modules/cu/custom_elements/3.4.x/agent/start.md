<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Custom Elements (custom_elements) — agent index

Renders content as **custom-element markup** (`<my-teaser title="…">`) instead of themed HTML.
Submodules: `custom_elements_extra_formatters`, `custom_elements_thunder`, `custom_elements_ui`.
Settings at `/admin/config/system/custom-elements` behind `administer site configuration`.
Version **3.4.1**. Core requirement `^10 || ^11`.

**The architectural position — this is the point of the module.** Three options, not two:
1. *fully coupled* — Twig templates; front end not reusable elsewhere;
2. *fully decoupled* — front end fetches JSON and owns rendering; loses Drupal's preview, layout
   and editorial context;
3. **this** — Drupal decides *what* appears and in what order and emits one element per component;
   the front end owns *how it looks*. Drupal keeps its **render pipeline, caching and access
   checks**; the front end keeps its component model.

Lineage: this is the approach the **Thunder** distribution took, hence `custom_elements_thunder`.

**Establish the contract before committing.** Element and attribute names become an **API** —
renaming one is a breaking change for the front end. Version it, document it, and decide who owns
changes. That governance question sinks more of these projects than any technical limit.
