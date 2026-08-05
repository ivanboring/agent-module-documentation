<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Twilio (twilio) — agent index

Twilio SMS integration: settings form, test-send form, per-user phone verification, message log.
Configure at `/admin/config/system/twilio`. Version **8.x-3.0-alpha17** (2024).
Core requirement `^8 || ^9 || ^10 || ^11`.

**Two warnings before recommending this.**

1. **Maturity.** An **alpha** from 2024. The four-major core range is a declaration, not evidence
   of testing.
2. **`/user/{user}/edit/twilio` has no owner check.** The route requires only `access twilio` —
   a non-restricted permission intended for ordinary users verifying *their own* number — and
   `UserSettingsForm` never compares `{user}` with the current user. **Verified live on a clean
   install:** an account holding only `access twilio` read another user's confirmed mobile number
   and then deleted that user's verification record via `op=Delete & start over`. After the delete
   the attacker can register their own number against the victim's uid.
   The fix is `_entity_access: 'user.update'` on the route — which is exactly what
   `one_time_password` does for its structurally identical `/user/{user}/two-factor-auth`.
   Until then, treat `access twilio` as authority over **every** user's phone data.
   Also: the confirmation code is 4 digits, compared with `!=`, with no flood control.

Permissions: `administer twilio` (`restrict access: TRUE`, gates both admin routes),
`access twilio`, `access twilio log`.

**Credentials.** The account SID and auth token live in configuration. An auth token is a live,
billable credential — put it in an environment variable and reference it through a **Key** entity
rather than letting it reach an exported config file.
