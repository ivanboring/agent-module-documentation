<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Instafeed Block (instafeed_block) — agent index

Blocks rendering Instagram posts **client-side** via **instafeed.js**. Settings at
`/admin/config/…/instafeed_block`. Version **1.0.12**. Core requirement `^9 || ^10 || ^11`.

**Two approaches to "show our Instagram", differing in almost every respect:**
- **client-side (this)** — the visitor's browser fetches and renders. Simple, always current; but
  **every visitor's browser contacts Instagram** (a consent and data-protection question), and the
  block is **empty** whenever the API is unavailable or the token has expired.
- **server-side into content** (`social_feed_fetcher`, wave 75) — cached, themed, searchable, and
  it keeps working when the API does not.

**The credential reality decides whether this stays working:** Instagram's API requires a **Facebook
app**, a **business or creator account**, and **app review**; **tokens expire and must be
refreshed**. The failure is not an error but **silence** — the block renders empty, nobody is
notified, and it is found weeks later.

**Two further points:** **instafeed.js has been through breaking rewrites** alongside Instagram's
API changes — check the shipped version against what the API now expects; and reposted content
carries whatever rights questions came with it.
