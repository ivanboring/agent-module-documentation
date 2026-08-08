<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Commerce Payrexx integration — agent index

Drupal Commerce **payment gateway for Payrexx** (redirect checkout + return/webhook processing). Depends on
`commerce`. Version **2.1.1**. Core `^10||^11`.

**Security (correct):** the webhook **treats the posted transaction as untrusted and RE-FETCHES it from
Payrexx's authenticated API** (instance+secret) before acting (the controller comments this explicitly);
redirect checkout uses Payrexx `SignatureCheck`. Forged webhooks can't mark an order paid. Store the Payrexx
API secret as a **secret**; HTTPS; confirm test/live mode.
