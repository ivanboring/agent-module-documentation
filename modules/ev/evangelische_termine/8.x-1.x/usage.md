<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Evangelische Termine integrates the German church-events portal evangelische-termine.de into a Drupal site. It provides several blocks: a filtered event list (with a filter form and "more" pagination form), an event teaser/slider, and a resource-booking form block. Content is fetched from the remote events database and rendered via the module's Twig templates; Colorbox is used for lightbox display.
It is aimed at parish/church sites (package "Vernetzte Kirche") that want to embed their events, teasers and room/resource booking from the central evangelische-termine.de service.
---
Install with `drush en evangelische_termine` (requires `colorbox`). Place the provided blocks (filtered list, teaser, resource booking) and configure each block's settings — e.g. the organizer ID (Veranstalter-ID), resource IDs, host, and display options. The blocks call out to the configured evangelische-termine.de host to retrieve data.
Security note: the module registers an autocomplete route `/et-slider-autocomplete/{field_name}/{type}/{typeid}/{host}` with `_access: 'TRUE'` (fully anonymous). The `{host}` path segment is passed straight into a server-side cURL request (`https://{host}/searchuser/{q}/{type}/{id}`, with `CURLOPT_FOLLOWLOCATION`), and the response body is returned to the caller as JSON. Because the attacker controls the host (and the `q`/type/id path parts are concatenated unescaped), this is an unauthenticated Server-Side Request Forgery: a remote user can make the site issue outbound HTTPS requests to arbitrary hosts and read back responses. Treat this as a finding: the host must be pinned to a trusted allowlist and the endpoint access restricted.
---
- Install: `composer require drupal/evangelische_termine && drush en evangelische_termine -y` (needs colorbox).
- Place the "Evangelische-Termine Veranstaltungsliste mit Filter" (filtered list) block.
- Place the teaser/slider block for compact event display.
- Place the resource-booking form block for room/resource reservations.
- Configure each block's organizer ID (Veranstalter-ID) and host.
- Restrict the resource-booking block to specific resource IDs.
- Choose grouping (none / by keyword) and whether to show blocked events.
- Colorbox provides lightbox display of event details.
- Events are fetched server-side from evangelische-termine.de.
- The filter form and "more" form drive list filtering/pagination.
- IMPORTANT: the `/et-slider-autocomplete/.../{host}` endpoint is anonymous and takes the remote host from the URL — an unauthenticated SSRF.
- Do NOT expose this module publicly without pinning the host and restricting the route.
- The autocomplete returns the fetched remote body to the caller as JSON.
- Consider patching the controller to hardcode/allowlist the host.
- Templates render event data; keep the remote service trusted.
- Intended for parish/church sites using the central events portal.
