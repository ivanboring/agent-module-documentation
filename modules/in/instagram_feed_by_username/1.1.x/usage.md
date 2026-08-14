<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Instagram Feed By Username provides an `instagram_field` field type (widget + formatter) that stores an Instagram username and renders that user's recent posts on the page, fetched at display time from a third-party API.

---

The field formatter calls `InstagramFeedByUsernameService::posts($username)`, which requests `https://api.woxo.tech/instagram?source={username}` via the Drupal HTTP client, decodes the JSON, and renders the posts through the `field__instagram_feed_by_username` theme template (images, links and like/comment counts). The username is entered by editors with field edit access; no API key is used.

Security review: the request goes to a fixed HTTPS host with the username as a query parameter (no SSRF) and uses the default TLS-verified client (no `verify => false`). One caveat: the template outputs remote post image URLs into an **unquoted** attribute (`<img src={{post.image}}>`); because Twig HTML-escaping does not encode spaces, malicious remote API data could inject extra attributes (e.g. an `onerror` handler) — a low-risk stored/reflected XSS that depends on the third-party API returning hostile content. Quoting the attribute (`src="{{ post.image }}"`) fixes it. Other post values (`text1`, `text2`, `link`) are in quoted/escaped contexts.

---

- Show an Instagram user's recent posts on a page.
- Add an Instagram username as a field.
- Fetch the feed by username at render time.
- Display post images, links and counts.
- Use a field widget to enter the username.
- Use a field formatter to render the feed.
- Require no API key from the site.
- Theme the feed via a dedicated template.
- Attach the module's feed CSS library.
- Embed a social feed in any fieldable entity.
- Rely on a third-party API for feed data.
- Render posts as a linked image grid.
- Provide a simple social-proof widget.
- Configure per field instance.
- Fetch over HTTPS with TLS verification.
- Note: quote the image `src` attribute to harden against hostile API data.
