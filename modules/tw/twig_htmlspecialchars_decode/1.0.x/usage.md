<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Twig HTML entities decode adds a single Twig filter that runs PHP's `htmlspecialchars_decode()` on a string, for the cases where a value has arrived already entity-encoded and would otherwise render as visible `&amp;` and `&quot;` in the page.

---

The module is three files of substance: `src/TwigHtmlSpecialCharsDecode.php` registering the extension and `twig_htmlspecialchars_decode.services.yml` tagging it as a `twig.extension`. There are no routes, permissions, configuration or dependencies, and it works on Drupal 9, 10 and 11 alike. The situation it addresses is real — a field value double-encoded upstream, a token that arrives escaped, a migrated string carrying literal entities — but it is worth being clear about what the filter is and is not. Decoding entities *undoes* escaping, so a value that is decoded and then emitted without re-escaping is an XSS vector. Twig's auto-escaping still applies to the filter's output, so `{{ value|htmlspecialchars_decode }}` on its own is safe; the danger is combining it with `|raw`. The right long-term fix is almost always to stop the double-encoding at its source; this filter is the pragmatic patch when the source cannot be changed.

---

- Fix a value that renders as visible `&amp;` in the page.
- Undo double-encoding introduced by an upstream system.
- Clean up entity-encoded strings from a migration.
- Render an imported feed title correctly.
- Handle an API response that arrives pre-escaped.
- Correct escaped quotes in a meta description.
- Patch a display issue without changing the data.
- Decode entities inside a custom Twig template.
- Work around a token that escapes its output.
- Normalise strings before comparing them in Twig.
- Fix an alt attribute showing raw entities.
- Handle legacy content with literal entities.
- Support Drupal 9, 10 and 11 with one filter.
- Avoid writing a one-function custom module.
- Repair titles imported from a CMS that escaped them.
- Decode a value before passing it to another filter.
- Correct a page title rendered through a view.
- Provide a stopgap while the source system is fixed.
