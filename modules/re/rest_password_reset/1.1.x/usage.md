<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
REST Password Reset provides REST endpoints for requesting a password-reset link, retrieving a forgotten username, and completing a password reset — for decoupled/headless front ends.

---

A decoupled front end needs to drive the password-reset flow over an API rather than Drupal's own pages. REST Password Reset provides three REST resources for that: request a reset link by email, retrieve a username by email, and complete the reset with a hash+timestamp. Reviewed closely because password reset over an API is a classic place to leak user existence or mishandle tokens — and this module gets the important things right. The request endpoints return a **generic message** ('If there is an active user…') for both existing and non-existing emails, so they do not enumerate accounts; the reset completion compares the reset hash with **`hash_equals()`** (constant-time) against core's `user_pass_rehash()`, honours the configured reset timeout, and there is a **5-minute per-user flood check** on requests. One minor caveat: the request endpoints take the email as a GET URL parameter, so the email lands in server/proxy logs and browser history — a POST body would keep it out of logs. Overall it is a sound implementation to pair with a headless front end.

---

- Reset a password over REST.
- Request a reset link by email.
- Retrieve a username by email.
- Complete a reset with hash+timestamp.
- Support a decoupled front end.
- Avoid account enumeration.
- Rely on hash_equals for the code.
- Honour the reset timeout.
- Rate-limit reset requests.
- Drive reset from a SPA.
- Keep the generic response message.
- Note the email is in the GET URL.
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