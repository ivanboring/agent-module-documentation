<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Twig HTML entities decode (twig_htmlspecialchars_decode) — agent index

One Twig filter wrapping PHP's `htmlspecialchars_decode()`. No dependencies, no routes, no
permissions, no config. Core requirement `^9 || ^10 || ^11`.

Key facts:
- Whole module: `src/TwigHtmlSpecialCharsDecode.php` +
  `twig_htmlspecialchars_decode.services.yml` (tagged `twig.extension`).
- **Escaping note.** The filter *removes* escaping. Twig's auto-escaper still runs on the
  result, so `{{ value|htmlspecialchars_decode }}` alone is safe — the hazard is
  `{{ value|htmlspecialchars_decode|raw }}`, which hands unescaped, previously-escaped content
  straight to the page. Never chain it with `raw` on untrusted input.
- It treats a symptom. Double-encoded values almost always come from a token, migration or
  external feed that escaped too early; fixing that source is the durable answer, and this
  filter is the patch when you cannot.
