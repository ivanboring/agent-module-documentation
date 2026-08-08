<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Exception Mailer emails an administrator when an error/exception occurs, with an exclude mechanism to filter out chosen exceptions.

---

Knowing about errors promptly helps operators respond. Exception Mailer emails an administrator when an exception occurs, with configurable excludes to suppress noise. The security-relevant consideration is what those emails contain: an exception notification can include a stack trace, file paths, and context that may hold sensitive data — internal paths, query fragments, and occasionally values that should not travel in email. So direct the notifications to a secure, trusted admin inbox, be aware the emails may contain diagnostic detail, and use the exclude mechanism to filter out expected/noisy exceptions. Also mind volume: an error storm becomes an email storm, so excludes and any rate consideration matter. Useful for monitoring; treat the emails as potentially-sensitive diagnostic output.

---

- Email on an exception.
- Get error notifications.
- Alert admins to errors.
- Exclude noisy exceptions.
- Monitor errors by email.
- Direct emails to a secure inbox.
- Know emails may contain traces.
- Filter expected exceptions.
- Mind email volume in an error storm.
- Treat notifications as sensitive.
- Respond to errors promptly.
- Configure exclusions.
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