<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Captcha Keypad provides a virtual number-keypad challenge: the form shows a short code and a set of on-screen digit buttons, and the user clicks the code's digits in sequence. It plugs into the CAPTCHA module as a challenge type, and can also add itself to forms standalone.

---

The keypad is a click-based challenge rather than a distorted-text one, which is friendlier on touch devices and to users who struggle with warped letters. As a CAPTCHA *type* — the intended way to use it — it is registered through the CAPTCHA module, which generates the challenge, stores the expected answer server-side, and validates the response against that stored value. In that configuration the module works correctly and is a reasonable, accessible bot deterrent.

The important caveat is the standalone mode, and it is a security one. When the CAPTCHA module is **not** installed, the module adds the keypad to selected forms itself and validates it with its own handler — which compares the typed code against a value **also submitted by the client** in a hidden field, with no server-side secret. That validation can be satisfied by a script posting two matching fields, so in standalone mode the challenge stops no automated submission at all. There is also a test shortcut: setting the code-size to `99` makes the fixed string `testing` pass, in both modes. These are documented in this module's local security notes; the practical rule is simple.

**Always run this module with the CAPTCHA module enabled, and never in standalone mode.** With CAPTCHA driving it, the server-side validation path is the one in use and the standalone weakness does not apply. Keep the code size at a normal value, not 99. Configured that way it is a usable accessible CAPTCHA; configured standalone it is decoration.

---

- Add an accessible click-based CAPTCHA.
- Offer a touch-friendly challenge.
- Avoid distorted-text CAPTCHAs.
- Use it as a CAPTCHA module challenge type.
- Protect a registration form from bots.
- Protect a contact form from bots.
- Let users click a code sequence.
- Enable the CAPTCHA module to drive it.
- Rely on server-side validation via CAPTCHA.
- Avoid standalone mode entirely.
- Keep the code size at a normal value.
- Never set the code size to 99.
- Skip the challenge for admins.
- Choose a keypad theme.
- Shuffle the keypad digits.
- Place the keypad on selected forms via CAPTCHA.
- Provide an alternative to reCAPTCHA.
- Give a mobile-friendly bot check.
- Configure the challenge length.
- Treat standalone mode as insecure.