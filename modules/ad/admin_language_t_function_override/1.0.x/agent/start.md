<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Admin Language t() function Override (admin_language_t_function_override) — agent index

**Forces English interface strings on admin and configured paths regardless of the URL language prefix.**

- **Version:** 1.0.x  •  **Core:** ^10 || ^11  •  **Package:** HCLTech  •  **Depends on:** `language`
- **Configure:** `/admin/config/regional/admin-language-t-function-override` (`administer site configuration`).
- **How:** decorates the core `string_translation` service via `AdminStringTranslationDecorator` to resolve translations against English on matching paths.
- **Security:** Single settings route gated by `administer site configuration`; no anonymous or mutating endpoints, reads no untrusted input. No security findings.
