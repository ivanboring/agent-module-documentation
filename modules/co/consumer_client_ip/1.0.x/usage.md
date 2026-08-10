<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Consumer Client IP maps a different HTTP client-IP header to the X-Forwarded-For header.

---

Consumer Client IP **remaps a configurable HTTP header into `X-Forwarded-For`** — on each request a kernel
event reads the value of an admin-chosen header (e.g. a CDN/proxy header like `CF-Connecting-IP` or
`True-Client-IP`) and writes it into the `X-Forwarded-For` header, so Drupal's normal reverse-proxy client-IP
resolution then reports that value as the client IP. It depends on the Consumers module.

Use it where a proxy/CDN carries the real client IP in a non-standard header. It is an authentication/networking
integration and it has an important **security precondition**: the header it maps must be one that a **trusted
upstream proxy sets and strips from inbound client input** — because the module trusts whatever value is in that
header. If the mapped header is client-settable (an attacker sends it directly) and Drupal is configured to trust
`X-Forwarded-For` (`reverse_proxy` + `reverse_proxy_addresses` in settings.php), then a client can **spoof their
apparent IP**, defeating IP-based access rules, flood/rate limiting, geolocation and logging integrity. So: only
map a header your edge injects, ensure the edge overwrites/removes any client-supplied copy, and pair this with
correct `reverse_proxy` trust settings. It has no access-control role of its own. Configure the source header.

---

- Remap a chosen header into X-Forwarded-For.
- Read an admin-chosen header per request.
- Feed Drupal's reverse-proxy client-IP resolution.
- Depend on the Consumers module.
- Serve proxy/CDN IP integration.
- Trust whatever value is in that header.
- REQUIRE the source header be set by a trusted proxy + stripped from client input.
- Enable client-IP SPOOFING if the header is client-settable under reverse_proxy trust.
- Undermine IP access rules / flood control / geo / logging if spoofed.
- Be paired with correct reverse_proxy + reverse_proxy_addresses settings.
- Have no access-control role of its own.
- Configure the source header.
- Handle client-IP mapping.
- Map the header.
- Configure the header.
- Set X-Forwarded-For.
- Handle the request.
- Resolve client IP.
- Trust the edge only.
- Provide client-IP header mapping.
