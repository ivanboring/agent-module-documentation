<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Cision — agent index

**Integrates the Cision API** to import press releases/news as content and media. Depends on core `image`,
`media`, `imagecache_external`, and **`key`**. Version **1.0.7**. Core `^10||^11`.

Web-services/import — calls the external Cision API (egress); stores the **API key via the Key module** (positive);
fetches remote images (cache them). No access role.
