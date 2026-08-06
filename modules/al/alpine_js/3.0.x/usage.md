<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Alpine.js Library support makes Alpine available as a Drupal library and, more usefully, guarantees that anything declared as an Alpine plugin loads *before* Alpine itself initialises.

---

Alpine is the low-ceremony choice for sprinkling behaviour into server-rendered markup, which makes it a natural fit for Drupal themes that do not want a build step or a framework. The catch is initialisation order: Alpine starts on `DOMContentLoaded` and registers whatever plugins it can see at that moment, so a plugin loaded after Alpine has started simply does not exist. Drupal's library system has weights and dependencies but no notion of "this is an Alpine plugin", so the ordering has to be arranged by hand and breaks whenever aggregation or another module's library changes the sequence.

This module gives that relationship a name. `AlpineAssetService` handles the asset ordering, and a settings form at `alpine_js.settings_form` controls how Alpine is delivered. A theme or module declares its library as depending on Alpine, or as an Alpine plugin, and the load order comes out right regardless of aggregation.

Practically it suits progressive-enhancement work: dropdowns, tabs, modals and form interactions written as HTML attributes rather than as a JavaScript application, and Livewire-style patterns where markup comes from Drupal and only the interaction is client-side. If a site already has a bundler and a component framework, this is not the layer it needs — the value is precisely in not having a build step.

---

- Add Alpine.js to a Drupal theme without a build step.
- Guarantee an Alpine plugin loads before Alpine initialises.
- Declare a theme library as depending on Alpine.
- Fix an Alpine plugin that silently does nothing.
- Keep load order correct under JS aggregation.
- Write dropdown and modal behaviour in markup attributes.
- Progressively enhance server-rendered Drupal markup.
- Add interactivity to a paragraph component.
- Avoid pulling in a full front-end framework.
- Register a custom Alpine directive as a plugin.
- Control how Alpine is delivered from a settings form.
- Share Alpine between several modules on one site.
- Replace a hand-tuned library weight hack.
- Diagnose Alpine behaviour that works locally but not with aggregation on.
- Prototype interaction quickly in a Drupal theme.
- Decide whether a site needs Alpine or a bundler.
