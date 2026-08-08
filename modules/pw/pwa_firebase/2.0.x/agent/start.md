<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# PWA Firebase — agent index

**Firebase Cloud Messaging (FCM) web-push** for a Drupal PWA (serves `manifest.json` + `firebase-messaging-
sw.js`, registers push tokens, admin compose/send). Config at `pwa_firebase.configuration`; provides
permissions. Version **2.0.11**. Core `^9||^10||^11`.

**SECURITY CAVEAT (2.0.11):** `/firebase-send-token` (`_access: 'TRUE'` → `tokenReceived()`) is
**unauthenticated + CSRF-less** — anonymous POSTs **insert** token rows (table pollution) and `action=delete`
deletes any token with **no ownership check**. Low-severity (own table only). Add CSRF + rate-limit, scope
delete/update to the caller. Public manifest/SW/offline routes are expected. Store Firebase creds as secrets.
See `security.md`.
