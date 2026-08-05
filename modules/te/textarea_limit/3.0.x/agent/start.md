<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Textarea Limit (textarea_limit) — agent index

Character limit with a live counter on selected **textarea widgets**. Core-only dependencies.
Core requirement `^9 || ^10 || ^11`.
Settings at `/admin/config/content/textarea-limit`, permission `administer textarea_limit`.

Key facts:
- **It is an editorial aid, not validation.** The counter is JavaScript: it guides the person
  typing. Anything that submits without running the script — a programmatic save, an import, a
  REST/JSON:API write — is unaffected. Where the limit must actually hold, add a server-side
  constraint on the field as well.
- Configured centrally (which widgets are limited) rather than per field instance, so one settings
  page covers the site.
- Own permission rather than `administer site configuration`, so the limits can be tuned by an
  editorial lead.
- Overlaps with **`maxlength`** (a `varbase_core` dependency, wave 56) — do not run both on the
  same widget; pick one.
- Surface: `textarea_limit.module`, `src/Form/LimitTextSettingsForm.php`,
  `css/textarea_limit.css`, `textarea_limit.libraries.yml`, `config/install`.
