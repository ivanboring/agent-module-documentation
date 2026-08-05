<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# IntlDate (intl_date) — agent index

Locale-aware date formatting via PHP's **intl / ICU**, as configuration entities.
Core requirement `^10.1 || ^11`. PHP >= 8.0.

Key facts:
- **Requires `ext-intl`.** Not enabled on every PHP install — check `php -m | grep intl` before
  recommending it, because the failure is at install time.
- Provides an `intl_date_format` **config entity** with a full admin UI at
  `/admin/config/regional/intl-date-time` (all routes gated by `administer site configuration`),
  so formats export and deploy like core's date formats.
- `src/TwigExtension.php` lets templates format dates directly, in addition to the field
  formatters in `src/Plugin/`.
- **When it earns its place:** multilingual sites. Core's date formats are `date()` patterns, which
  produce one shape for every language; ICU encodes per-locale month names, ordering and
  calendars. On a single-language site core is simpler and sufficient.
