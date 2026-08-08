<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Enforce User Fields forces users to complete required account fields — redirecting them to their profile edit form until required fields are filled.

---

A site that adds required profile fields cannot make existing users fill them retroactively; users just keep browsing with incomplete profiles. Enforce User Fields closes that by redirecting a user to their edit form until the required fields are complete. It is a user-experience/data-completeness tool. The consideration is scope: the redirect intercepts navigation, so confirm it does not trap users on pages they legitimately need (logout, help) and that the required-field set is genuinely required — an over-broad enforcement frustrates users and can lock them into the edit form.

---

- Force users to complete profile fields.
- Require account fields retroactively.
- Redirect to the edit form.
- Enforce required user data.
- Complete missing profile data.
- Ensure profile completeness.
- Confirm the required-field set.
- Avoid trapping users.
- Allow logout during enforcement.
- Improve data quality.
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
- Match your use case.
- Confirm compatibility.