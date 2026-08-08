<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
PWA Firebase provides Firebase Cloud Messaging push notifications and a PWA manifest/service worker.

---

PWA Firebase adds **Firebase Cloud Messaging (FCM) web push** to a Drupal PWA — it serves a
`manifest.json` and a `firebase-messaging-sw.js` service worker, registers browser push tokens, and lets an
admin compose/send push notifications (`/admin/content/notification`). It is configured at
`pwa_firebase.configuration`, provides its own permissions.

Use it to send web-push notifications to PWA users. **Security caveat (2.0.11): the token-registration
endpoint is unauthenticated and has no CSRF token.** `/firebase-send-token` (`_access: 'TRUE'` →
`PWAController::tokenReceived()`) takes `token`/`action` from an **anonymous** POST with no CSRF token and no
rate limit — any request **inserts** a row into the `pwa_firebase` table (unbounded table pollution / junk
subscription rows), and `action=delete` runs `DELETE … WHERE token = X` with **no ownership check**, so
anyone who learns a stored FCM token can unsubscribe that device. Impact is limited to the module's own
subscription table (no account/content compromise), so it's low-severity — but you should require a CSRF token
+ rate-limit the endpoint and scope delete/update to the caller's own tokens. The public `manifest.json` /
service worker / `offline.html` routes are expected for a PWA (not the issue); the service worker loads the
Firebase SDK from `gstatic.com`. Store the Firebase credentials as secrets. See the local security.md.

---

- Send FCM web-push notifications.
- Serve a PWA manifest and service worker.
- Register browser push tokens.
- Let an admin compose/send pushes.
- Configure at pwa_firebase.configuration.
- KNOW the token endpoint is unauthenticated + CSRF-less.
- Understand anonymous POSTs pollute the token table.
- Know action=delete removes any token (no ownership check).
- Require CSRF + rate-limit the endpoint.
- Scope delete/update to the caller's tokens.
- Store Firebase credentials as secrets.
- Treat public PWA routes as expected.
- Provide its own permissions.
- Handle push notifications.
- Configure Firebase.
- Secure the token endpoint.
- Handle FCM.
- Send notifications.
- Guard the subscription table.
- Configure the PWA.
