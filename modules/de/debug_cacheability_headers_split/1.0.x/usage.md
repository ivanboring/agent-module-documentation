<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Debug Cacheability Headers Split detects if debug cacheability headers exceed the maximum server limit and splits them into multiple headers.

---

Debug Cacheability Headers Split addresses a debugging annoyance — Drupal's `X-Drupal-Cache-Tags`/
`X-Drupal-Cache-Contexts` debug headers can grow large enough to exceed the web server's max header size
(causing errors); this module detects that and **splits** the value across multiple headers so debug
cacheability headers work on pages with many cache tags. It is configured at
`debug_cacheability_headers_split.settings`, in the Development package.

Use it during cache debugging on pages with large cache-tag sets. It is a developer/debugging feature; debug
cacheability headers are a development aid (typically disabled in production) and it has no content or access
role. Enable it where debug headers are used.

---

- Split oversized debug cacheability headers.
- Avoid the server max-header-size limit.
- Fix debug headers on many-cache-tag pages.
- Configure at the settings form.
- Detect oversized headers.
- Split across multiple headers.
- Aid cache debugging.
- Disable in production (dev aid).
- Have no content/access role.
- Enable for debug headers.
- Handle cacheability headers.
- Split headers.
- Configure the split.
- Handle debug headers.
- Fix header limits.
- Debug cache tags.
- Handle the headers.
- Configure debugging.
- Split debug headers.
- Aid debugging.
