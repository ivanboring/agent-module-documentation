<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Acquia Cookie Vary — agent index

Varies **cached responses by specific cookies** on the Acquia platform (cache per-cookie-value for
cookie-dependent pages). Version **1.0.0**. Core `^10.3||^11||^12`.

Performance/caching — **security-sensitive**: vary only by cookies that safely partition **public** content;
**never** vary/cache by a session/auth cookie (would serve one user's private response to another). No access
role.
