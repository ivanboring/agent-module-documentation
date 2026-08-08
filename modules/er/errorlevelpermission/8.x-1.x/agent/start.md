<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Error Level Permission — agent index

Shows PHP **errors/warnings/notices only to users with permission** (keep error output away from anonymous/
unprivileged visitors). Provides permissions. Version **8.x-1.4**. Core `^8.7.7||^9||^10||^11`.

**Positive security-hardening** — on-screen errors leak paths/SQL/stack traces (attacker aid); gating by
permission reduces the info-disclosure surface. Grant "see errors" only to trusted devs/admins. No other
access role.
