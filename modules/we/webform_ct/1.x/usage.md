<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Webform Custom JavaScript (webform_ct) lets a permitted user attach custom JavaScript to a webform's confirmation, gated by a dedicated permission.

---

Sometimes a webform needs a bit of custom JavaScript — a conversion pixel on confirmation, a bespoke interaction. webform_ct allows attaching custom JS to a webform, and it does the important thing correctly: the custom-JavaScript field is gated by a **dedicated permission** (`webform_ct.administer_webform_confirmation_javascript`) with `#access` control, not available to every webform editor. That matters because attaching arbitrary JavaScript is a stored-XSS capability — the script runs in visitors' browsers — so it must be restricted to fully trusted users, and the module scopes it to its own permission rather than folding it into general webform editing. Grant that permission only to developers/administrators you trust with client-side code, never to ordinary form builders.

---

- Add custom JS to a webform.
- Attach a conversion pixel.
- Run JS on confirmation.
- Gate custom JS by permission.
- Restrict the JS capability.
- Grant JS access to trusted users only.
- Treat custom JS as stored XSS.
- Keep it from ordinary editors.
- Add bespoke form interaction.
- Confirm who holds the permission.
- Add tracking on submit.
- Scope the JS permission narrowly.
- Enable when needed.
- Keep disabled otherwise.
- Restrict administration.
- Confirm on your site.
- Test before production.
- Review configuration.
- Pair with related modules.
- Keep setup minimal.
- Verify theme fit.
- Audit access.