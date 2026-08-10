<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Advanced 403 Redirect — agent index

**Redirects access-denied (403) responses to a configured page/destination** (e.g. login). Provides permissions.
Version **1.0.1**. Core `^9||^10||^11`.

Site-structure/UX — destination is **admin-configured** (not user-controlled — no open-redirect); changes where a
403 sends the user, not who gets one. No access role beyond permission.
