<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Anonymous session toolkit — agent index

Consistent **session handling for anonymous users** (custom code can store per-visitor state — anon carts/
prefs). Wraps core `SessionManager` (session security is core's). Version **1.0.3**. Core `^8||^9||^10||^11`.

**Caveat:** anonymous sessions **disable the anonymous page cache** for those requests — scope to
relevant paths; use only where statefulness is worth the caching cost. No access role.
