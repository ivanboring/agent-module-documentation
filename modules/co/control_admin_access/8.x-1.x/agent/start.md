<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Control Admin Access — agent index

A **form to allow/deny access to admin pages by IP address** (hardening layer). Provides permissions. Version
**8.x-1.4**. Core `^9||^10||^11`.

Security-hardening — **client IP is spoofable** (needs trusted-proxy config; not a substitute for auth) and
**misconfig can lock all admins out** (keep a recovery path). Combine with strong auth. No standalone access
guarantee.
