<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Amazon PA-API is a Drupal helper for the Amazon Product Advertising API.

---

Amazon PA-API is a **helper for the Amazon Product Advertising API (PA-API 5)** — providing a client to
query Amazon product data (search, item lookup) for affiliate/product displays. It provides its own permissions,
in the Amazon package.

Use it to fetch Amazon product data. It is an integration feature. Security/data handling: PA-API requests are
**AWS-signed** with your **access key + secret key** (and a partner/associate tag) — store the access/secret keys
as **secrets** (env/Key, not committed config) over HTTPS, and note that requests go out to **Amazon** (external
egress). It has no access-control role beyond its permission. Configure the PA-API credentials and partner
tag.

---

- Query the Amazon Product Advertising API.
- Search/look up Amazon products.
- Serve affiliate/product displays.
- Provide a PA-API client.
- Provide its own permissions.
- Use PA-API 5.
- Sign requests with AWS access + secret keys.
- Store the access/secret keys as secrets.
- Send requests to Amazon (egress) over HTTPS.
- Have no access-control role beyond permission.
- Configure credentials + partner tag.
- Handle PA-API.
- Fetch product data.
- Configure the client.
- Query Amazon.
- Handle the integration.
- Look up products.
- Search products.
- Secure the keys.
- Provide Amazon product data.
