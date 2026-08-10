<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Cision integrates the Cision API to import press releases/news as content and media.

---

Cision **integrates the Cision API** — pulling press releases / news items from the Cision PR platform into
Drupal as content and media (with external images cached locally). It depends on core Image and Media, the
Imagecache External module, and the **Key** module.

Use it to syndicate Cision press releases. It is a web-services/import feature. Security/data handling: it **calls
the external Cision API** (egress) and — correctly — stores the **Cision API credentials via the Key module**
(secret handling, a positive). Note it fetches **remote images** (via Imagecache External) from Cision's servers;
ensure that's acceptable and cached. It has no access-control role. Configure the Cision API key (via Key).

---

- Integrate the Cision API.
- Import press releases/news.
- Store them as content/media.
- Depend on Image, Media, Imagecache External, Key.
- Serve web services/import.
- Syndicate Cision content.
- Call the external Cision API (egress).
- Store the Cision API key via the Key module (positive).
- Fetch remote images (Imagecache External; cache them).
- Have no access-control role.
- Configure the Cision API key via Key.
- Handle Cision import.
- Import releases.
- Configure the client.
- Fetch news.
- Handle the integration.
- Sync PR content.
- Cache remote images.
- Secure the key via Key.
- Provide Cision integration.
