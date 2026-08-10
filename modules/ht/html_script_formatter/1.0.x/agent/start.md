<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# HTML Script Formatter — agent index

A field formatter that **outputs the raw field value UNESCAPED** (renders HTML/`<script>`). Depends on core
`field`. Applies to `text`/`text_long`/`text_with_summary`/`string`/`string_long`. Version **1.0.3**. Core
`^8||^9||^10||^11`.

**SECURITY — dangerous by design (stored-XSS).** Returns the value as safe markup with no escaping (comment:
"user input should equal the output"), removing sanitization — and applies to unformatted `string` fields.
Anyone who can edit such a field can inject executable `<script>`. Use **only** on fields editable exclusively by
fully-trusted admins; prefer a real text format / `Xss::filter()` otherwise. Recorded as a danger-2 finding. No
access role.
