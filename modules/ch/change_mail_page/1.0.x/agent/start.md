<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Change Mail Page — agent index

**Dedicated email-change page** (access + password verified). Version **1.0.2**. Core `^10||^11`.

Change form gated by `_entity_access: user.update` + requires the **current password** (defensive; prevents session-hijack email change).