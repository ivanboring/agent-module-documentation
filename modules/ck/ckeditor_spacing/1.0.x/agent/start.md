<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# CKEditor Spacing (ckeditor_spacing) — agent index

**Set margin/padding on individual blocks from a CKEditor 5 balloon, without enabling the style attribute.**

- **Version:** 1.0.x (1.0.1)
- **Core:** ^10.3 || ^11 · **Depends on:** ckeditor5
- **Plugin:** `Plugin/CKEditor5Plugin/Spacing` (toolbar balloon); **Filter:** `Plugin/Filter/SpacingFilter` (data-attribute → inline style)
- **Routes/permissions/services:** none of its own
- **Setup:** add the Spacing toolbar button; enable "Apply spacing to block elements" filter ordered AFTER "Limit allowed HTML tags"
- **Security:** the `style` attribute is never enabled on the format; spacing is stored as a controlled data attribute and only the filter emits inline style, so the format stays XSS-safe. Filter XPath runs against a controlled attribute set, not arbitrary CSS. No server routes.
