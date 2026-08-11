<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Etsy API provides the base integration to connect a Drupal site to the Etsy API.

---

Etsy API is a base module that exposes the Etsy API to Drupal so other modules/custom code can integrate an Etsy shop — pulling listings, orders, or shop data — using OAuth2 authentication. By itself it does nothing user-facing; it's the connectivity layer.

Etsy API credentials are configured under `administer etsy settings` and should be stored securely (env-backed). Depends on `oauth2_client` and `imagecache_external`; supports Drupal 10.4+ and 11.1+.

---

- Expose the Etsy API to Drupal.
- Integrate an Etsy shop.
- Authenticate via OAuth2.
- Pull listings/orders/shop data.
- Serve as a connectivity layer.
- Do nothing user-facing alone.
- Gate settings with `administer etsy settings`.
- Store credentials securely.
- Keep credentials env-backed.
- Depend on `oauth2_client`.
- Depend on `imagecache_external`.
- Support Drupal 10.4+ and 11.1+.
- Enable custom Etsy integrations.
- Configure the API connection.
- Fetch Etsy data.
- Support e-commerce sync.
- Provide base Etsy connectivity.
- Integrate with an Etsy store.
