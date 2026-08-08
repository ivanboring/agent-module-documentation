<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Captcha Keypad (captcha_keypad) — agent index

Virtual **number-keypad** CAPTCHA challenge (click the shown code). Version **8.x-1.11**.
Core `>=8`. Integrates with the **CAPTCHA** module as a challenge type; also has a standalone mode.
Settings gated by its own admin permission.

**Run it ONLY with the CAPTCHA module enabled.** That path stores the solution server-side and
validates correctly — accessible, touch-friendly bot deterrent.

**Standalone mode (CAPTCHA module absent) is insecure — verified.** Its own validator compares the
code against a **client-submitted hidden field**, no server secret → a two-field POST passes; the
challenge stops nothing. Also: setting `captcha_keypad_code_size` to **99** makes the literal
`testing` pass in *both* modes (a shipped test shortcut, and 99 is settable via a plain textfield).
Keep size normal; never run standalone. See this module's `security.md`.