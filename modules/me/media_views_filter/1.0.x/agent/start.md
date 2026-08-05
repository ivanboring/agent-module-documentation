<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Media Views Filter (media_views_filter) — agent index

Views **filters and fields for media entities** — file size, dimensions, MIME type, usage, uploader
— so the media library and media administration screens become searchable. Version
**1.0.0-rc1** — a release candidate. Core requirement `^9 || ^10 || ^11`.
Package `OHSU`: released from an institution's own site work, which usually means it solves that
institution's problem precisely and documents it sparsely.

**The problem is scale.** Fifteen thousand images, a grid, a name filter and a type filter — finding
"the header image from the March campaign page" means scrolling.

**Two useful notes:**
1. **The media library modal is itself a view** (`media_library`), so filters added here can be
   placed **in the picker** — which is where they matter. The administration listing is used far
   less.
2. **"Is this used anywhere" is the highest-value filter and the most expensive.** Usage tracking
   needs either a reverse-reference query across every field that could point at media, or an
   index maintained on save. Check which before enabling it on a large library.
