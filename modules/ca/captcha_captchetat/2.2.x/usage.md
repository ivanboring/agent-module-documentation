<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
CaptchEtat plugs the French government's CAPTCHA service into the CAPTCHA module, as an alternative to reCAPTCHA and similar.

---

For a French public-sector site, the choice of CAPTCHA is partly a policy question. reCAPTCHA sends visitor data to Google; CaptchEtat is operated by the state's own digital service and is designed to satisfy French accessibility requirements, which matters because CAPTCHAs are one of the most reliable ways to exclude disabled users from a form.

The module supplies the challenge through an endpoint at `/captchetat/object`, with settings and a separate form for the visible texts.

**Its open endpoint is well built and worth citing as a model.** `/captchetat/object` carries `_access: 'TRUE'`, which is correct and unavoidable — a CAPTCHA precedes authentication, so there is no permission to check. What matters is what it does instead, and `CaptchaObjectController::get()` does all of it: requires the captcha type and, except for images, an identifier; checks service availability; and then uses **Drupal's flood service** with a configurable IP limit and window, registering each attempt and returning a distinct flooded response. It even logs flood denials. That is markedly better than several modules reviewed in this campaign that guard far more sensitive operations with nothing — `alogin`'s TOTP verification, in this same wave, has no attempt limiting at all.

**One defect, read from source.** The sound-object branch tests a constant rather than comparing to it:

```php
if (CaptchaClientInterface::OBJECT_TYPE_SOUND) {
  $response->headers->set('Content-Disposition', 'attachment; filename="' . $objectType . '.wav"');
  $response->headers->set('Content-Type', 'audio/x-wav');
}
```

`OBJECT_TYPE_SOUND` is `'sound'` — a non-empty string, so the condition is **always true** and every response, image challenges included, is sent as `audio/x-wav` with a `.wav` attachment disposition. It should be `if ($objectType === CaptchaClientInterface::OBJECT_TYPE_SOUND)`. Whether it breaks the visual CAPTCHA depends on how the front end consumes the response; either way the headers are wrong.

---

- Use a French government CAPTCHA.
- Avoid sending visitor data to Google.
- Meet French accessibility requirements.
- Offer an audio CAPTCHA alternative.
- Serve the challenge from an open endpoint.
- Rate-limit challenge generation by IP.
- Log flood-control denials.
- Configure the IP limit and window.
- Customise the CAPTCHA texts.
- Cite the endpoint as a flood-control model.
- Notice the always-true sound-type branch.
- Check the Content-Type on image challenges.
- Report the constant-not-comparison defect.
- Restrict who administers the integration.
- Compare CAPTCHA options for a public-sector site.
