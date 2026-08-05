<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Custom Elements renders Drupal content as custom-element markup — `<my-teaser title="…">` rather than a themed HTML block — so a front end built from web components consumes structure instead of parsing Drupal's markup.

---

This is a third position in the decoupling argument, and the most interesting one. Fully decoupled means the front end fetches JSON and owns all rendering, losing Drupal's preview, layout and editorial context. Fully coupled means Twig templates and a front end that cannot be reused elsewhere. Custom elements keeps Drupal deciding *what* appears and in what order, while emitting a semantic element per component and leaving *how it looks* to a web-component implementation the front-end team owns. Drupal keeps its render pipeline, caching and access checks; the front end keeps its component model. This is the approach the **Thunder** distribution took, and the `custom_elements_thunder` submodule reflects that lineage, alongside `custom_elements_extra_formatters` and a `custom_elements_ui` for configuring the mapping. Version **3.4.1** on core `^10 || ^11`; settings sit at `/admin/config/system/custom-elements` behind `administer site configuration`. The thing to establish before committing is the **contract between the two sides**: element names and attribute names become an API, and renaming one is a breaking change for the front end. Version it, document it, and decide who owns changes to it — that governance question sinks more of these projects than any technical limitation.

---

- Render content as web components.
- Feed a component-based front end.
- Keep Drupal's render pipeline in a decoupled build.
- Emit semantic elements per component.
- Reuse a front-end component library.
- Avoid parsing Drupal markup downstream.
- Support a Thunder-style architecture.
- Keep preview working in a decoupled site.
- Define a markup contract with a front-end team.
- Render a teaser as a custom element.
- Support progressive decoupling.
- Keep access checks in Drupal.
- Output structured attributes.
- Map fields to element attributes.
- Support a design-system front end.
- Avoid a full headless rewrite.
- Serve components to several front ends.
- Keep editorial layout control in Drupal.
