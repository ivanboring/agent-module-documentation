<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Commerce Open Payment Platform (OPP) — agent index

A Drupal Commerce **payment gateway for the Open Payment Platform (OPPWA / COPYandPAY)** (card + MB WAY;
`commerce_opp_webhooks` submodule). Depends on `commerce_payment`. Version **2.0.12**. Core `^10||^11`.

Trust boundary **correct** (reviewed): status **re-queried from the OPP API server-side** (never a client
field); the public `/opp/webhooks` endpoint requires IV/auth-tag headers and **AES-256-GCM authenticated
decryption** with the `encryption_secret` (forged bodies rejected; **fails closed** if the secret is empty —
so **configure and protect it**). Store API credentials + secret as secrets; HTTPS. See `security.md`.
