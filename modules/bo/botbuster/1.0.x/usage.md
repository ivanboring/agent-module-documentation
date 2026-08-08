<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
BotBuster protects configurable paths from bots using a lightweight JavaScript browser-verification challenge.

---

BotBuster protects configurable paths from bots using a lightweight JavaScript browser-verification
challenge — before serving a protected path, it requires the client to pass a JS challenge that automated
bots (which often don't run JavaScript) fail, filtering out simple scrapers and abusive automation. It is
configured at `botbuster.settings` and is in the BotBuster package.

Use it to add a low-friction bot filter to sensitive or abuse-prone paths (forms, expensive endpoints)
without a full CAPTCHA. This is a security/anti-abuse control. Note the usual caveats for JS-challenge bot
protection: it stops simple/naive bots but not headless-browser or determined attackers (which can run
JS), and it requires JavaScript (so it can affect legitimate no-JS clients/accessibility) — use it as one
layer, and pair with rate-limiting/CAPTCHA where stronger protection is needed. Configure the protected
paths.

---

- Protect paths from bots with a JS challenge.
- Filter out simple scrapers.
- Verify the browser runs JavaScript.
- Configure protected paths.
- Configure at botbuster.settings.
- Add low-friction bot filtering.
- Protect abuse-prone endpoints.
- Understand it stops naive bots only.
- Know determined bots can pass.
- Require JavaScript (accessibility caveat).
- Use as one anti-abuse layer.
- Pair with rate-limiting/CAPTCHA.
- Reduce automated abuse.
- Challenge clients before serving.
- Filter automation.
- Apply to forms/expensive endpoints.
- Provide lightweight bot protection.
- Configure the challenge.
- Block simple bots.
- Add a browser check.
