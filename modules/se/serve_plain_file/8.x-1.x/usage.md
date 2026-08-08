<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Serve Plain File serves administrator-configured plain-text files at chosen URLs — for ads.txt, google-site-verification, facebook domain ownership and similar verification files.

---

Verification and metadata files — ads.txt, sellers.json, google-site-verification, a Facebook domain-ownership file — need to be served at a specific URL, and editing the docroot or adding server config for each is awkward, especially where the docroot is not writable. Serve Plain File lets an administrator define these files and their content in the backend, and serves them at the configured URLs. The content is admin-authored configuration served at admin-chosen paths — there is no filesystem path input and no user-supplied content, so no traversal or injection surface; the admin routes are gated by `administer serve plain file`. Confirm the served paths do not unintentionally shadow real routes.

---

- Serve an ads.txt file.
- Serve google-site-verification.
- Serve a Facebook domain file.
- Configure static files in the backend.
- Serve files without docroot access.
- Define a verification file.
- Set the file content in config.
- Restrict who configures served files.
- Serve at a chosen URL.
- Avoid editing the docroot.
- Confirm paths don't shadow routes.
- Serve sellers.json.
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