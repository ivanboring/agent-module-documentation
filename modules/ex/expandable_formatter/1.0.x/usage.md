<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Expandable Formatter provides a field formatter that lets long text fields expand and collapse, showing a truncated preview with a read-more toggle.

---

Expandable Formatter is a field formatter that displays a text field collapsed to a configurable
height (optionally with an ellipsis) and lets the visitor expand it — a "read more / read less" toggle
with configurable trigger labels, classes, animation effect and duration. It works on text fields,
rendering formatted text through Drupal's processed-text pipeline (respecting the field's text format)
and, for plain values, escaping via Twig autoescaping (`{{ value|nl2br }}`), so output is safe.

Use it to keep long descriptions or bios compact in listings and let users expand them in place. It is
a presentation/formatter feature; it depends on core Field and has no access-control role. Configure
the collapsed height, ellipsis and trigger labels in the field's display settings.

---

- Show text fields with expand/collapse.
- Add a read-more toggle to long text.
- Collapse text to a set height.
- Show a truncated preview with ellipsis.
- Configure trigger labels and classes.
- Set the animation effect and duration.
- Render formatted text via processed_text.
- Escape plain values via Twig autoescaping.
- Keep long bios compact in listings.
- Expand descriptions in place.
- Depend on core Field.
- Configure collapsed height in display settings.
- Provide read-more / read-less.
- Respect the field's text format.
- Output safely-escaped text.
- Toggle long content on click.
- Use on article summaries.
- Have no access-control role.
- Style the expand trigger.
- Present compact then expandable text.
