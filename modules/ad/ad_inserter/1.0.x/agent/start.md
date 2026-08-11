<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Ad Inserter – Ad Manager — agent index

An **ad-management** module: define ad units and insert ad code/snippets into pages. Version **1.0.0-rc8**. Core `^9||^10||^11`.

`administer ad inserter` is effectively trusted — ad code is third-party JS, so editors can inject script into public pages. Restrict to full admins. Requires core `field`.