<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
CaptchEtat integrates the CaptchEtat CAPTCHA service (a French government CAPTCHA) into Drupal via the CAPTCHA module.

---

CaptchEtat provides a CAPTCHA that connects to the CaptchEtat API — a CAPTCHA service operated for
French government (service-public) sites. It plugs into the CAPTCHA module as a challenge type, so
forms protected by CAPTCHA present the CaptchEtat challenge to keep bots and spam out. It is configured
at `captchetat.settings` (the CaptchEtat API endpoint and credentials) and depends on the CAPTCHA
module.

Use it where a French public-sector CAPTCHA is required or preferred over reCAPTCHA. As with any
external CAPTCHA, it calls the CaptchEtat service to issue/verify challenges, so store any API
credentials as secrets and be aware challenge verification depends on that service's availability. It
is a spam-control/security feature; assign it to the forms that need protection via the CAPTCHA
module's administration.

---

- Add a CaptchEtat CAPTCHA to forms.
- Use a French government CAPTCHA.
- Connect to the CaptchEtat API.
- Protect forms from bots and spam.
- Plug into the CAPTCHA module.
- Configure at captchetat.settings.
- Store CaptchEtat credentials as secrets.
- Depend on the CAPTCHA module.
- Use as a reCAPTCHA alternative.
- Assign the challenge to specific forms.
- Verify challenges via the service.
- Protect login/registration.
- Meet public-sector CAPTCHA requirements.
- Depend on CaptchEtat availability.
- Issue challenges to visitors.
- Reduce spam submissions.
- Configure the API endpoint.
- Serve French service-public sites.
- Gate contact forms.
- Add bot protection.
