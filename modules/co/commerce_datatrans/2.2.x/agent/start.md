<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Commerce Datatrans — agent index

Drupal Commerce **payment gateway** for Datatrans. The async webhook
(`PaymentNotificationController`) **verifies an HMAC signature** and **fails closed**: requires the
`sign2` key (403 if absent), rejects missing/invalid `Datatrans-Signature` with
`AccessDeniedHttpException`, and only then processes whitelisted statuses (settled/transmitted/
authorized). Version **2.2.0**. Core `^10.1||^11`.

Correct signature posture — forged notifications are rejected. Minor: comparison uses `==` not
`hash_equals()` (impractical network timing side-channel). Depends on `commerce_payment`; configure
merchant ID + both signing keys as secrets.
