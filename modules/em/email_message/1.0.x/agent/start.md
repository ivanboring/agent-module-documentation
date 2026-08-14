<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Email Message field (email_message) — agent index

**A compound field type storing an email subject + formatted body, with widget and formatter.**

- **Version:** 1.0.x  •  **Core:** ^10.2 || ^11 || ^12  •  **Requires:** field
- **Plugins:** FieldType `email_message` (extends `TextLongItem`, adds required `subject` column); FieldWidget `email_message_default`; FieldFormatter `email_message_default_formatter`.
- **API:** `getEmailSubject()`, `getEmailBody()` (returns processed body); `isEmpty()` true unless both subject and body set.
- **No routes, permissions, or services.**
- **Security:** Pure field plugin. Body is a formatted text field, so XSS protection follows the chosen text format's filters/permissions; no other attack surface.
