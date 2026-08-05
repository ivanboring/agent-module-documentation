<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Google Tag Manager: Events (google_tag_events) — agent index

Server-side event infrastructure for GTM's data layer. Depends on `google_tag ^2.0` and
`js_cookie ^1`. Core requirement `^9.2 || ^10 || ^11`.
Settings at `/admin/config/services/google-tag/events/settings`, gated by google_tag's own
**`administer google_tag_container`** permission (this module declares none).

Key facts:
- Complements `google_tag`, does not replace it. That module emits the container snippet; this
  one solves how a *server-side* occurrence reaches the data layer on the next rendered page.
- Defines a plugin type: `GoogleTagEventsPluginManager`, `GoogleTagEventsPluginBase`,
  `GoogleTagEventPluginInterface`. Custom events are plugins, not hooks.
- **Cross-request queueing** is the interesting mechanism: `src/PrivateTempStoreFactory.php` +
  `src/PrivateTempStoreCookie.php` hold pending events across a redirect *including for
  anonymous visitors*, who otherwise have no session. `src/LazyBuilder.php` injects them into
  the page without breaking page cacheability; `src/Ajax/` covers events raised in AJAX
  responses.
- **Privacy:** anonymous queueing means a cookie is set before any consent decision is
  recorded. Check the interaction with the site's consent-management tooling before enabling;
  this belongs in a cookie audit.
