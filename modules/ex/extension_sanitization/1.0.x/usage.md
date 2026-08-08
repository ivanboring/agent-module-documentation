<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Filename extension sanitization removes duplicated file extensions from filenames, mitigating double-extension upload bypasses.

---

Filename extension sanitization removes duplicated file extensions from uploaded filenames — for
example collapsing `file.php.jpg` or `image.jpg.jpg` so a filename can't smuggle an extra (executable)
extension. This mitigates double-extension upload bypasses, a classic file-upload attack where an attacker
uploads `shell.php.jpg` hoping the server treats it as PHP. It is in the Media package.

Use it as defense-in-depth for file uploads. This is a positive security-hardening measure. Note the usual
framing: it hardens against one specific bypass (duplicated/extra extensions) and **complements, does not
replace**, Drupal core's own upload protections (allowed-extensions lists, `munge_filename`, serving uploads
from a location that doesn't execute code) — keep those correct too. It has no content-access role. Enable
it to sanitize uploaded filenames.

---

- Remove duplicated file extensions.
- Collapse file.php.jpg style names.
- Mitigate double-extension upload bypasses.
- Prevent smuggling an extra extension.
- Harden file uploads.
- Apply defense-in-depth.
- Complement core upload protections.
- Keep allowed-extensions lists correct.
- Serve uploads from a non-executing location.
- Have no content-access role.
- Sanitize uploaded filenames.
- Prevent shell.php.jpg tricks.
- Reduce upload attack surface.
- Enable filename sanitization.
- Guard against extension tricks.
- Clean up filenames.
- Add upload hardening.
- Not replace core protections.
- Handle duplicate extensions.
- Secure file uploads.
