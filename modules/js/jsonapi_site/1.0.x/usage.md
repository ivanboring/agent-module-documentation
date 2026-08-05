<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
JSON:API Basic Site Settings exposes a site's name, slogan, front page and theme settings over JSON:API, so a decoupled front end can read them rather than having them hard-coded in two places.

---

A headless front end needs the same handful of values a Drupal theme takes for granted — the site name for the page title, the slogan, the logo path, which page is the front page, where 403 and 404 go. JSON:API serves entities, and these are configuration, so there is no resource for them; the usual result is that the front end hard-codes values that then drift from Drupal. This module adds the endpoint at `/jsonapi/site/site`, returning a JSON:API-shaped document, with `jsonapi_site.api.php` documenting a `hook_jsonapi_site_data_alter()` so a site can add its own values. Access is `_user_is_logged_in: 'TRUE'` with `key_auth` in the route's `_auth` list — which is the thing to understand before enabling it, because that is **any authenticated user, not a permission**. On a site with open registration, anyone who signs up can read the response, and the response includes the site's configured **email address** and the **`system.site` UUID** alongside the obviously public values. Neither is a credential, but neither is something a site would normally publish to every registered account, so a permission-gated variant or an alter that strips them is worth considering.

---

- Read site name and slogan from a decoupled front end.
- Avoid hard-coding site settings in a front end.
- Expose the front page path over API.
- Read the default theme's logo path.
- Keep a front end in step with Drupal settings.
- Serve 403 and 404 paths to a client app.
- Add custom values through an alter hook.
- Authenticate API reads with a key.
- Build a headless site's chrome from Drupal.
- Read the default language code.
- Provide settings to a mobile app.
- Avoid a second source of truth.
- Feed a static site generator.
- Read theme settings over JSON:API.
- Support a Next.js or Nuxt front end.
- Update front-end branding from Drupal.
- Provide the site UUID to an integration.
- Extend the payload for a bespoke client.
