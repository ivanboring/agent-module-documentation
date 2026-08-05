<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Button Formatter renders link and file fields as styled buttons instead of plain anchors, with the button style chosen per field display and the available styles defined once for the site.

---

Turning a link field into a call-to-action button is a recurring need that usually gets solved badly: a class typed into the link's own attributes, a template override per field, or a Views field rewrite. All three scatter presentation decisions across the site. This module centralises them. A settings form at `/admin/config/button-formatter`, behind the `administer button formatter` permission (marked `restrict access: true`), defines the set of button styles available; the field formatter in `src/Plugin` then offers those styles as a select on any link or file field's display settings, and `templates/button-link.html.twig` renders the result. Because the choice is part of the field display, it exports with configuration and applies consistently everywhere that display is used — including in Views, if the field is rendered through its formatter. Dependencies are core only, and the core requirement is `^10 || ^11`. The release still carries the legacy `8.x-1.8` packaging string.

---

- Render a link field as a call-to-action button.
- Style a file download as a button.
- Offer editors a fixed set of button styles.
- Keep button styling out of link attributes.
- Apply consistent CTA styling across content types.
- Match buttons to a design system.
- Choose a button style per field display.
- Export button configuration with the site.
- Render buttons inside a view.
- Avoid a template override per field.
- Give a landing page a prominent download button.
- Distinguish primary and secondary actions.
- Theme buttons with one Twig template.
- Prevent editors inventing ad-hoc classes.
- Restrict style definitions to administrators.
- Support several button variants per site.
- Style a document link consistently.
- Reduce bespoke CSS for link fields.
