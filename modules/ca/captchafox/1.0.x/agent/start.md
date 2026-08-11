<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# CaptchaFox — agent index

**Privacy-focused CAPTCHA for the CAPTCHA module**. Depends on `captcha`. Provides permissions. Version **1.0.2**.
Core `^10||^11`.

Spam-control — **positive**: verifies **server-side** (Drupal POSTs the response + **secret key** to
`api.captchafox.com/siteverify` over HTTPS; client can't self-assert). Store the secret key as a secret (env/Key);
ensure verify **fails closed**. No access role beyond permission.
