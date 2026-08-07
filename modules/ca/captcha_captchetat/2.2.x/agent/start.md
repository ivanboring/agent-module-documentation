<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# CaptchEtat with CAPTCHA (captcha_captchetat) — agent index

French government CAPTCHA service for the **CAPTCHA** module.
Configure at `/admin/config/people/captcha/captchetat` (+ `/texts`).
Version **2.2.0**. Core `^10.3 || ^11`. Depends on `captcha:captcha`.
Permission: `administer captcha_captchetat` (**restrict**).
Challenge endpoint: `/captchetat/object`, `_access: 'TRUE'`.

**Cite the open endpoint as a model.** `_access: 'TRUE'` is correct and unavoidable — a CAPTCHA
precedes authentication. What matters is what it does instead, and `CaptchaObjectController::get()`
requires the captcha type (and an id except for images), checks service availability, and uses
**Drupal's flood service** with a configurable IP limit and window, registering each attempt,
returning a distinct flooded response and logging denials. Contrast `alogin` in this same wave,
whose TOTP verification has no attempt limiting at all.

**One defect, read from source:**

```php
if (CaptchaClientInterface::OBJECT_TYPE_SOUND) {   // constant, not a comparison
```

`OBJECT_TYPE_SOUND` is `'sound'`, so this is **always true** — every response, image challenges
included, gets `Content-Type: audio/x-wav` and a `.wav` attachment disposition. Should be
`$objectType === CaptchaClientInterface::OBJECT_TYPE_SOUND`.