<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Custom Frontpage for Authenticated Users gives logged-in visitors a different front page from anonymous ones, without redirecting them away from `/`.

---

Drupal has one front page setting, so a site whose public homepage is a marketing page and whose members expect a dashboard has to choose, or bolt on a redirect. A redirect is the common workaround and a poor one: it changes the URL, breaks the "home" link's meaning, and adds a round trip. This module instead serves different content at the same path — an event subscriber in `src/EventSubscriber` intercepts the front-page request and resolves it to the configured alternative for authenticated users, with a settings form at `/admin/config/system/authenticated-frontpage`. Its permission, `administer authenticated_frontpage configuration`, is marked **`restrict access: true`**, appropriate for a setting that decides what a whole class of users sees first. There are no dependencies beyond core and the range is a wide `^8 || ^9 || ^10 || ^11`. Two things to check on any site adopting it: the **page cache**, since a response that varies by authentication state must carry the `user.roles:authenticated` cache context or anonymous visitors can be served the members' page; and the interaction with any other module that also claims the front page.

---

- Show members a dashboard at the site root.
- Keep a marketing homepage for anonymous visitors.
- Avoid redirecting logged-in users away from /.
- Give an intranet a public landing page.
- Serve different content at the same URL.
- Show a members' feed after login.
- Keep the "home" link meaningful for both audiences.
- Avoid an extra redirect round trip.
- Present onboarding content to new members.
- Give staff a task list on the front page.
- Configure the alternative front page without code.
- Restrict the setting to trusted administrators.
- Support a community site with a public face.
- Show a personalised welcome page.
- Replace a bespoke event subscriber.
- Keep anonymous SEO content unchanged.
- Serve a members' area without a separate path.
- Support a site still on Drupal 8.
