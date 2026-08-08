<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Domain Microsite by Path — agent index

Creates **microsites using Domain records at subpaths of existing domains** (a subpath behaves like a Domain
domain). Depends on `domain`. Version **2.x** (dev). Core `^9||^10||^11`.

Site-structure/multi-domain — maps subpaths to Domain records; Domain's access controls govern each
microsite. Verify the mapping matches intended content isolation. No access role of its own.
