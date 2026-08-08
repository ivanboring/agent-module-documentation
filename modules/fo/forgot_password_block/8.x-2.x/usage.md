<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Forgot Password Block exposes the user password-reset request form as a placeable block, so 'forgot password' can appear anywhere rather than only on its own page.

---

The password-reset request form lives at /user/password by default; putting it in a login area, a modal, or a sidebar means placing it where users are. Forgot Password Block exposes that form as a block. It is the standard core reset-request form rendered in a block, so it inherits core's behaviour — including core's anti-enumeration (the same generic 'further instructions have been sent' message) and flood control. Place it where appropriate; the block is the core form, so its security is core's, and the consideration is simply not to pair it with anything that would leak whether an account exists.

---

- Place the forgot-password form as a block.
- Add password reset to a login area.
- Show the reset form in a sidebar.
- Put reset in a modal.
- Use the core reset form anywhere.
- Inherit core anti-enumeration.
- Improve the login UX.
- Place reset near login.
- Avoid linking away for reset.
- Keep core flood control.
- Enable when the feature is needed.
- Keep it disabled otherwise.
- Restrict administration to trusted roles.
- Confirm behaviour on your site.
- Test before production.
- Review configuration.
- Pair with related modules.
- Keep the setup minimal.
- Document why it was added.
- Verify it fits your theme.
- Audit access to it.
- Match it to your use case.