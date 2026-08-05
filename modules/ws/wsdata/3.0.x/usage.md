<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Web Service Data models external web services as **configuration**: a connector, an encoder and a decoder are configured in the admin UI, and the resulting data source can then be used in a block or a field without writing an API client.

---

The recurring shape of an integration is the same each time — call a service, decode the response, pick out some values, render them — and the recurring outcome is a bespoke module per service. WSData abstracts the parts: a **WSConnector** plugin handles the transport (HTTP, SOAP and others), **WSEncoder** and **WSDecoder** plugins handle request and response formats, **WSReplacement** handles token substitution in the request, and the whole thing is stored as a configuration entity so it deploys with the site. The submodules supply the consumption points: **wsdata_field** makes a service a field on an entity, **wsdata_block** renders one as a block, **wsdata_extras** adds further plugins, and **wsdata_example** is the worked example. Configuration lives at `/admin/config/services/wsdata` behind `administer site configuration`, and the core requirement is `^9 || ^10 || ^11`. Two things matter in practice: any credential the service needs is configuration, so it belongs in an environment variable rather than an exported YAML file; and a page rendering a live external call is only as fast and as available as that service, so caching and failure behaviour need to be settled before it goes on a high-traffic page.

---

- Show data from an external API in a block.
- Add a web service value as a field.
- Configure a REST integration without code.
- Call a SOAP service from Drupal.
- Decode a JSON or XML response.
- Substitute tokens into a request.
- Deploy an integration as configuration.
- Show live inventory from a supplier.
- Display exchange rates on a page.
- Render an external status feed.
- Reuse one connector across several data sources.
- Add a new transport as a plugin.
- Prototype an integration quickly.
- Show weather or transport data.
- Keep integration config in version control.
- Avoid a bespoke module per service.
- Cache external responses.
- Support an intranet dashboard.
