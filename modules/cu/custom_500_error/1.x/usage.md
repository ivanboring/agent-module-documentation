<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Custom 500 Error lets administrators customize the 500 internal-server-error page.

---

The default 500 error page is bare. Custom 500 Error lets an administrator customize it. The consideration for any error page is that it must not leak sensitive information — a 500 page should show a friendly message, never a stack trace, database detail or internal path, to an untrusted user. So customize it with a generic apology and no diagnostic detail, and confirm the custom page does not inadvertently include debug output. A well-crafted 500 page is a small security-hygiene win (it avoids information disclosure on errors).

---

- Customize the 500 error page.
- Show a friendly error page.
- Brand the error page.
- Avoid a bare 500.
- Show no stack trace to users.
- Keep diagnostic detail out.
- Confirm no debug output.
- Improve the error experience.
- Prevent info disclosure on errors.
- Set a generic error message.
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
- Use deliberately.
- Review after upgrades.