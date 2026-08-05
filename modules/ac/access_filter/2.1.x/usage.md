<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Access Filter restricts access to the site or to parts of it by IP address, with rules held as configuration entities.

---

IP restriction is the layer that identity cannot provide: a stolen password matters much less if the administrative interface only answers from known networks. It is also how a staging site stays private, how a partner integration is confined to the addresses that should be calling it, and how an abusive source is cut off faster than a permissions change can be planned. Version **2.1.0** on core `^9 || ^10 || ^11`, with rules at `/admin/config/people/access_filter` behind a `manage access filters` permission. Three things determine whether the restriction is real rather than reassuring. **The client IP must be correct**, which behind any CDN or load balancer means Drupal's `reverse_proxy` and `reverse_proxy_addresses` settings must be configured — without them `getClientIp()` returns the proxy's address and an `X-Forwarded-For` header written by the caller is being trusted, which inverts the control entirely. **The permission is not marked `restrict access`**, and it governs who may reach the site, so treat it as an administrative permission regardless of what the module declares. And **the web server or CDN remains the stronger place for this**: a rule enforced before PHP starts costs nothing, cannot be bypassed by an application bug, and survives a Drupal that will not boot — which is precisely when an IP restriction matters most. Use this where the infrastructure is not yours to configure, or where the rules must travel with the site's configuration.

---

- Restrict a staging site to office addresses.
- Block an abusive source quickly.
- Limit admin access to known networks.
- Confine a partner integration to their addresses.
- Restrict access during a launch window.
- Block a range of addresses.
- Allow only a VPN range.
- Add a network layer to site access.
- Keep a pre-launch site private.
- Restrict access to an internal tool.
- Manage IP rules as configuration.
- Export access rules between environments.
- Reduce exposure of a private site.
- Block a scraping source.
- Restrict a client preview site.
- Enforce an access policy by network.
- Deploy IP rules without server access.
- Audit which addresses are permitted.
