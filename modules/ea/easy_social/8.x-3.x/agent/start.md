<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Easy Social (easy_social) — agent index

Social sharing widgets (Facebook, LinkedIn, Pinterest, Twitter/X, email) with per-network settings
forms, plus an `easy_social_example` submodule. Configure at `/admin/config/services/easy-social`.
Version **8.x-3.2**. Core requirement `^9 || ^10 || ^11`.

Permissions: `administer easy_social` — correctly marked `restrict access: TRUE`. All six routes
require it.

Key facts:
- **Share widgets are a consent problem, not a decoration.** The official network widgets are
  third-party scripts that **track visitors on load**, before any click. Under GDPR that makes an
  unconditionally-loaded share set a common privacy-audit finding. Gate them behind the consent
  manager, or —
- **Prefer plain share links where possible.** `https://www.facebook.com/sharer/sharer.php?u=…`
  and equivalents load **no third-party code**, work without JavaScript, and cost only the
  share-count display.
- **The Twitter integration predates the X rebrand** and its widget changes — verify it still
  works before relying on it.
