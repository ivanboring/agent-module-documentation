<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
HTML Script Formatter outputs a text/string field's raw value as unescaped HTML.

---

HTML Script Formatter is a **field formatter that outputs the raw field value unescaped** — rendering a
text/string field's stored value directly as HTML (including `<script>`), so it can be used to embed scripts or
arbitrary markup from a field. It depends on core Field, in the Field Formatter package. It applies to `text`,
`text_long`, `text_with_summary`, `string` and `string_long` fields.

**Security — treat this as dangerous by design.** The formatter returns the field value as safe markup
(`FormattableMarkup($item->value, [])`) and the template emits it with **no escaping** — the module's own comment
states "the user input should equal the output". This **removes Drupal's output-sanitization guarantee** for the
field. Because it also applies to plain **`string`/`string_long`** fields (which have **no text format** at all),
anyone who can edit a field configured with this formatter can store `<script>…</script>` that executes for every
visitor (including admins) — a **stored XSS / privilege-escalation** vector. Only ever apply this formatter to
fields that are editable **exclusively by fully-trusted administrators**; never expose such a field to content
authors or any lower-privileged role, and prefer a real text format (`Xss::filter()`) wherever the value isn't
guaranteed-trusted. It has no access-control role. (Recorded as a danger-2 finding in this project's security
review.)

---

- Output the raw field value UNESCAPED.
- Render HTML/JS from a field.
- Remove output sanitization for the field.
- Apply to text/string incl. unformatted string fields.
- Depend on core Field.
- Return the value as safe markup (no escaping).
- BE stored-XSS-by-design.
- Only use on admin-only-editable fields.
- NEVER expose such a field to authors/low-priv roles.
- Prefer a real text format (Xss::filter) otherwise.
- Have no access-control role.
- Understand any editor of the field can inject JS.
- Handle the formatter.
- Output raw HTML.
- Configure with extreme caution.
- Render scripts.
- Handle the field.
- Treat it as dangerous.
- Restrict field-edit access.
- Provide a raw-HTML formatter (unsafe by design).
