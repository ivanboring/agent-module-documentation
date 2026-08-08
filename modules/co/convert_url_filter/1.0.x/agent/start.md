<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Convert URL Filter — agent index

Text-format **filter converting internal absolute URLs to relative** (e.g. `https://site/page` → `/page`)
— helps domain migrations / avoids hard-coded domains. Depends on core `filter`. Version **1.0.2**. Core
`^9||^10||^11`.

Content-display/filter — affects output, not stored values/access. Add to the text format(s).
