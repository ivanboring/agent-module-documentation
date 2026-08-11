<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Canvas LMS — agent index

**Handles settings shared by the CanvasApi LMS modules** (base URL/options for Canvas integrations). Version
**1.0.0-rc2**. Core `^8||^9||^10||^11`.

Integration-foundation/settings — centralizes Canvas connection config used by other modules to call the Canvas LMS
API (keep the base URL correct; credentials via consuming modules as secrets). No access role.
