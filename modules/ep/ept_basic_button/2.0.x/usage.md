<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
EPT Basic Button ships a Basic Button paragraph type — a call-to-action component for a Paragraphs-based page builder, so an editor adds a styled button as a page section rather than embedding a link in body text.

---

It is the button member of the Extra Paragraph Types family, whose text component was documented in wave 56: one small module per component, all sharing `ept_core` for the settings they have in common (background, spacing, container width). This one contributes the button: `config/install` defines the paragraph type and its link field, `templates/paragraph--ept-basic-button--default.html.twig` renders it, `css/ept_basic_button_view.css` styles it, and `src/Plugin`, `src/Hook` and `src/Services` handle the Drupal integration. Its dependencies are `ept_core`, `paragraphs` and core `link` — the last because a button is a link field with presentation attached. `core_version_requirement` is `^10.1 || ^11 || ^12`, already covering Drupal 12. Compare it with `button_formatter` (documented in wave 58): that renders an *existing* link field as a button through the display settings, which is the right tool when the link already exists on the entity; this creates a standalone button *section* in a stacked page, which is the right tool when the button is a component of the page rather than a property of the content.

---

- Add a call-to-action button as a page section.
- Give editors a styled button component.
- Place a download button between content blocks.
- Build a landing page from stacked components.
- Add a "book now" button to a page.
- Share spacing settings with other EPT components.
- Keep button styling consistent site-wide.
- Avoid buttons hand-coded in body text.
- Add a button without a developer.
- Theme the button with a Twig override.
- Provide a sign-up call to action.
- Reuse the button across content types.
- Support a component-based editorial workflow.
- Link to an external booking system.
- Add a button between two text sections.
- Prepare a component for Drupal 12.
- Adopt one EPT component on its own.
- Standardise CTAs across a marketing site.
