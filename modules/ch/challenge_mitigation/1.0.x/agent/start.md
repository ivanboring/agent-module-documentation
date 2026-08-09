<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Challenge Mitigation — agent index

Applies **mitigation (challenge/rate limiting) on selected paths** (throttle abuse on sensitive endpoints).
Provides permissions. Version **1.0.0**. Core `^10||^11`.

**Security/anti-abuse-positive** — application-layer (mitigates abuse on chosen paths; not a substitute for a
CDN/WAF vs volumetric attacks). Tune paths/thresholds. No access role beyond permission.
