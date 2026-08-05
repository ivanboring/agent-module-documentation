<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Orejime Register (orejime_register) — agent index

Records Orejime cookie-consent decisions to a database table. Depends on `orejime` (composer
`^3`). Core requirement `^10.1 || ^11 || ^12` (declares Drupal 12).
Admin listing at `/admin/reports/orejime-register/list`, permission
`administer orejime entities`; a `purge` route sits alongside it.

> ## The write endpoint is open, and this campaign exploited it
>
> ```yaml
> orejime_register.register:
>   path: '/orejime_register'
>   requirements:
>     # Anyone can add an entry to the registry.
>     _access: 'TRUE'
> ```
>
> No CSRF token, no rate limiting, no session binding. `RegisterController::save()` json_decodes
> the request body and inserts. **Verified: ten anonymous POSTs produced ten rows.**
>
> Two consequences — the second is the important one:
> - **unbounded growth** — one HTTP request costs the site one permanent row;
> - **the record is forgeable**, and the table exists precisely to evidence that consent was
>   given. Anyone can write entries, so it cannot distinguish genuine consent from fabricated.
>   See the local `security.md`.

Key facts:
- The table's columns are **generated per Orejime service** (`createColumn()`), so its shape
  follows the consent configuration rather than a fixed schema.
- `addEntry()` drops JSON keys that do not resolve to an `orejime_service` and skips the insert
  when nothing matches — so **no arbitrary column injection** (verified). The service names it
  does accept are rendered into the consent banner on every page, so they are public.
- **Privacy:** consent records are personal data. The purge route is the retention mechanism;
  someone still has to set the policy.
