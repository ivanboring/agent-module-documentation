<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
CaptchaFox protects your website from spam and abuse while letting real people through.

---

CaptchaFox **provides a privacy-focused CAPTCHA** for the CAPTCHA module — presenting a CaptchaFox challenge to
deter spam/bots. It depends on the CAPTCHA module, provides its own permissions, in the Spam control package.

Use it as a GDPR-friendly CAPTCHA. It is a spam-control feature, implemented correctly on the crucial point: the
challenge is **verified server-side** — Drupal sends the user's CaptchaFox response together with the **secret
key** to `https://api.captchafox.com/siteverify` (over HTTPS) and only accepts the form when CaptchaFox confirms
success (the client can't self-assert passing). Security essentials: store the CaptchaFox **secret key as a
secret** (env/Key, never commit), keep the site key/secret key distinct, and ensure the verify step **fails closed**
if the CaptchaFox service is unreachable. It has no access-control role beyond its permission. Configure the
CaptchaFox keys.

---

- Provide a privacy-focused CAPTCHA.
- Deter spam/bots.
- Integrate with the CAPTCHA module.
- Provide its own permissions.
- Serve spam control.
- Present a CaptchaFox challenge.
- VERIFY the challenge server-side (POST response + secret to /siteverify over HTTPS).
- Accept the form only on CaptchaFox success (client can't self-assert).
- Store the CaptchaFox secret key as a secret (env/Key, never commit).
- Ensure the verify step fails closed if the service is unreachable.
- Have no access-control role beyond permission.
- Configure the CaptchaFox keys.
- Handle CAPTCHA.
- Challenge users.
- Configure the keys.
- Verify challenges.
- Handle the challenge.
- Block bots.
- Fail closed.
- Provide a CaptchaFox CAPTCHA.
