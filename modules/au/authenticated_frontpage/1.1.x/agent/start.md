<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Custom Frontpage for Authenticated users (authenticated_frontpage) — agent index

Serves a different front page to logged-in users **at the same path** (no redirect).
No dependencies. Core requirement `^8 || ^9 || ^10 || ^11`.
Settings at `/admin/config/system/authenticated-frontpage`, permission
**`administer authenticated_frontpage configuration`** (`restrict access: true`).

Key facts:
- Implemented as an **event subscriber** (`src/EventSubscriber/`) that resolves the front-page
  request, not as a redirect. That keeps `/` as the URL for both audiences — the main reason to
  choose it over a redirect module.
- **Check cache contexts.** A response varying on authentication state must carry
  `user.roles:authenticated` (or `user`), or Drupal's internal page cache can serve the
  authenticated variant to anonymous visitors. Verify with the page cache enabled, not only while
  logged in — this is the failure mode to test for first.
- Conflicts in spirit with anything else that claims the front page (`localgov_login_redirect`,
  `login_destination`, a `<front>` route override). Pick one mechanism.
- Whole surface: `src/EventSubscriber/`, `src/Form/SettingsForm.php`, `.module`, `.routing.yml`,
  `.permissions.yml`. No config schema directory.
