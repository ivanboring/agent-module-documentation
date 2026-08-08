<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Amazon PAAPI5 provides integration with the Amazon Product Advertising API V5.

---

Amazon PAAPI5 integrates Drupal with the Amazon Product Advertising API v5 — fetching product data
(details, pricing, images, affiliate links) from Amazon for display, useful for affiliate/comparison sites.
It ships `amazon_pa_filter` and `asin` submodules, is configured at `amazon_pa.admin_settings`, provides its
own permissions, in the Amazon package.

Use it to pull Amazon product data. Security note: it authenticates to the PA-API with **access key / secret
key** (and a partner tag) — **store those credentials as secrets** (not in exported config), operate over
HTTPS, and be mindful of Amazon's PA-API usage terms/rate limits. Fetched product content is external data
(escape on display). It has no access-control role beyond its permission. Configure the Amazon credentials.

---

- Integrate the Amazon PA-API v5.
- Fetch Amazon product data.
- Show product details/pricing/images.
- Provide affiliate links.
- Ship filter/asin submodules.
- Provide its own permissions.
- Store the Amazon access/secret keys as secrets.
- Operate over HTTPS.
- Respect PA-API terms/rate limits.
- Escape fetched product content.
- Have no access-control role beyond permission.
- Configure at amazon_pa.admin_settings.
- Fetch product info.
- Handle credentials securely.
- Configure the Amazon connection.
- Pull product data.
- Handle affiliate data.
- Configure credentials.
- Integrate Amazon.
- Fetch products.
