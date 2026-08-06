<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Role login page lets a site define several login pages and send users to different destinations depending on their roles.

---

Sites with distinct audiences want distinct entrances. A staff login that lands on the editorial dashboard and a member login that lands on the member area; a supplier portal whose login looks like the portal rather than like Drupal; a course participant sent to their current course rather than to the front page. Core offers one login form and one destination rule, so the alternatives are a `hook_user_login()` redirect written per site or a set of paths with redirects bolted around them. This makes it configuration. Version **2.0.3** on `^8` through `^11`, behind `administer role login settings`. Two things are worth being precise about, because login is where a small mistake is a large one. **A distinct login page is presentation, not separation**: all of these forms authenticate against the same user table, so a member can log in at the staff page and vice versa, and the destination differs while the credentials do not — if the requirement is that staff accounts must not authenticate at the public entrance, that is `disable_login_by_domain`, an IP restriction, or a genuinely separate site. And **post-login redirects deserve the same care as any other redirect**: a destination taken from configuration is safe, one taken from a request parameter is an open-redirect surface, and the standard mitigation is core's own — `Url::fromUserInput()` refuses external targets, which is what makes an unvalidated destination a broken page rather than a phishing hop.

---

- Send staff to a dashboard after login.
- Land members on the member area.
- Provide a supplier portal login page.
- Route course participants to their course.
- Give each audience its own entrance.
- Redirect by role after login.
- Brand a login page per audience.
- Avoid a custom hook_user_login redirect.
- Provide a separate editor login path.
- Land administrators on the content list.
- Configure several login pages.
- Route volunteers to their rota.
- Provide a partner login entrance.
- Land customers on their orders.
- Configure post-login destinations.
- Support a multi-audience membership site.
- Provide a distinct staff entrance.
- Route users by role on sign in.
