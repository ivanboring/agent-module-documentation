<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# CaptchEtat — agent index

CAPTCHA via the **CaptchEtat API** (French government CAPTCHA service) — a challenge type for the
CAPTCHA module. Depends on `captcha`; config at `captchetat.settings`. Version **2.0.4**. Core
`^9||^10||^11`.

Store CaptchEtat credentials as secrets; verification depends on the external service. Assign to forms
via the CAPTCHA module.
