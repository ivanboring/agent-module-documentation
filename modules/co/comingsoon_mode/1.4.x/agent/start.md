<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Coming Soon Mode — agent index

Redirects visitors to a configurable **"coming soon" landing page** (pre-launch; login/reset + optional
register + static assets stay reachable). Request event-subscriber gated by `access website in comingsoon
mode`. Provides permissions. Version **1.4.0-alpha2**. Core `^9||^10||^11`.

**Soft redirect gate, NOT a security boundary** — don't rely on it to protect sensitive content (use real
access control). Permitted/logged-in users see the real site.
