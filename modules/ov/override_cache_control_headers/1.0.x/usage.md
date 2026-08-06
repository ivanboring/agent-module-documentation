<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Override Cache Control Headers lets an administrator set the `Cache-Control` header for specific URLs, overriding what Drupal would send.

---

Drupal computes cache headers from render metadata, and that is usually right. Where it is not, the alternatives are unattractive: patch the code path, put rules in the web server or CDN where the people who understand the content cannot see them, or accept the wrong behaviour. This module offers a third option — a URL pattern and the header you want.

The cases that come up in practice are specific. A landing page that must never be cached during a campaign; a rarely-changing legal page that could sit in a CDN for a day; an endpoint whose default headers make an integration misbehave; a path that must not be stored by an intermediary at all.

**Cache-Control is a security control as well as a performance one, and this module is the place to say so.** The header decides whether a shared cache — a CDN, a corporate proxy, a browser on a shared machine — may store a response. Overriding it too permissively on a path that returns anything personalised is how one user's page is served to another, which is the classic and most damaging caching bug. The direction of the mistake matters: a too-conservative override costs performance, a too-permissive one leaks data.

The permission `administer override cache control headers` is `restrict access: true`, which is the correct call for a setting with that reach.

---

- Stop a campaign landing page being cached.
- Cache a legal page in a CDN for longer.
- Fix an integration broken by default headers.
- Prevent an intermediary storing a response.
- Set max-age for a specific URL.
- Add no-store to a sensitive path.
- Keep cache rules where content owners can see them.
- Avoid patching code for a header change.
- Avoid burying rules in the CDN configuration.
- Restrict who may change cache headers.
- Review overrides on personalised paths.
- Avoid caching a personalised response publicly.
- Audit which URLs have overrides.
- Test header behaviour through the CDN.
- Document a site's caching exceptions.