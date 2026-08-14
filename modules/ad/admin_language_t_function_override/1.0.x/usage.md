<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Admin Language t() function Override forces English interface strings on admin and other configured paths even when the URL carries a non-English language prefix.
---
On multilingual sites the admin UI can end up rendered in the content language chosen by the URL prefix, which is undesirable for editors who need a stable English admin. This module decorates core's `string_translation` service (`AdminStringTranslationDecorator`) so that, on paths matching the configured list, `t()`/`TranslatableMarkup` resolve against English regardless of the negotiated language.

Configuration is a single settings form at `/admin/config/regional/admin-language-t-function-override`, gated by the core `administer site configuration` permission, where an administrator lists the path patterns (admin paths by default) that should be forced to English. The module reads no untrusted input and exposes no anonymous or mutating endpoints; the only route is the permission-gated settings form.
---
- Keep the Drupal admin UI in English on a multilingual site.
- Force English on paths that carry a language prefix like `/fr/admin/...`.
- Define which path patterns are forced to English.
- Give editors a consistent admin language independent of content language.
- Avoid partially-translated admin screens confusing operators.
- Override interface translation only where configured, leaving front-end intact.
- Decorate `string_translation` without patching core.
- Stabilize screenshots/documentation of admin screens in English.
- Prevent language negotiation from leaking into back-office tools.
- Apply the override to custom admin routes by adding their paths.
- Support agencies standardizing on English tooling across locales.
- Keep translated front-end content untouched while fixing admin language.
- Reduce editor errors caused by unexpected admin translations.
- Configure the path list without code via the settings form.
- Roll out per-site via exported configuration.
