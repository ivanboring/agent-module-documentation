<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# SMS Framework (smsframework) — agent index

**Machine name `sms`.** Extensible **SMS gateway API** — send/receive texts, pluggable providers,
phone verification, per-user routing. Version **2.4.0**. Core `^11`.
Submodules `sms_blast` (bulk), `sms_sendtophone`, `sms_user`, `sms_devel`.
Perms `administer smsframework`, **`sms verify phone number`** (identity-adjacent).

The shared SMS layer other features (2FA, reminders, alerts) build on. **Protect gateway
credentials** (e.g. Twilio auth token — authorises real, billed sends) — secure config, not plain
config/git. Restrict admin and send permissions.