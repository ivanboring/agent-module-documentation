<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Commerce Paypal Subscriptions — agent index

Enables **recurring payments (subscriptions) via the PayPal API** for Drupal Commerce (PayPal manages the
subscription lifecycle). Depends on `commerce`. Version **1.0.0**. Core `^10||^11`.

**Security:** store PayPal client ID/secret as **secrets**; HTTPS; **verify the PayPal webhook signature**
(reject forged subscription/payment events) and/or re-fetch subscription status from PayPal's API before
acting; confirm sandbox/live.
