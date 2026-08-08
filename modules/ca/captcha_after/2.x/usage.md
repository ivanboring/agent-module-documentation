<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
CAPTCHA After shows a CAPTCHA only after X unsuccessful submit attempts, reducing friction for legitimate users while still deterring bots.

---

A CAPTCHA on every submission frustrates legitimate users; showing it only after repeated failures targets the friction at likely-bad actors. CAPTCHA After displays a CAPTCHA after a configurable number of unsuccessful attempts. It is a spam/abuse-control refinement on the CAPTCHA module. The security consideration is the trade-off: allowing the first N attempts without a CAPTCHA means the first N automated attempts get through, so set the threshold low enough to bound abuse (a bot gets N free tries per whatever the attempt-counter keys on — confirm it keys on something an attacker cannot trivially reset, like IP or session, not just a client-side counter). For balancing UX and bot-deterrence it is sensible; tune the threshold and confirm the attempt-counting is server-side and not resettable.

---

- Show a CAPTCHA after failures.
- Reduce CAPTCHA friction.
- Deter bots after N attempts.
- Delay the CAPTCHA.
- Balance UX and bot control.
- Set a low threshold.
- Confirm server-side attempt counting.
- Ensure the counter isn't resettable.
- Key counting on IP/session.
- Bound the free attempts.
- Tune the threshold.
- Improve form UX.
- Enable when needed.
- Keep disabled otherwise.
- Restrict administration.
- Confirm on your site.
- Test before production.
- Review configuration.
- Pair with related modules.
- Verify theme fit.
- Match your use case.
- Confirm compatibility.