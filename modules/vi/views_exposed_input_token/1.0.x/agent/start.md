<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Exposed input token (views_exposed_input_token) — agent index

Global Views token containing the view's **exposed input**. Depends on core `views`.
PHP >= 8.1. Core requirement `^10.3 || ^11`.

Key facts:
- Whole module: `views_exposed_input_token.module`, `.info.yml`, `composer.json`,
  `CONTRIBUTING.txt`, `LICENSE.txt`. No routes, permissions, config or `src/`.
- Solves a recurring need: Views has no token for the exposed filter values, so "12 results for
  *kitchen*" or "No results for *kitchen*" normally means a preprocess function, a custom area
  plugin, or JavaScript reading the query string.
- **Escaping caution.** The token's value is request input, and echoing search input is the
  textbook reflected-XSS shape. Views areas that run tokens through the text format system escape
  it; a custom template that emits it raw does not. Confirm on the specific area where the token
  is used rather than assuming.
- Works in any Views area accepting tokens — header, footer, empty text, and titles where token
  replacement is available.
