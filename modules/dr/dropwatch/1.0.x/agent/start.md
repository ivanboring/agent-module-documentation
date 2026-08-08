<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# DropWatch — agent index

A client module that **sends site data/telemetry to the DropWatch service** (centralized monitoring/
oversight). Provides permissions. Version **1.0.0-beta7**. Core `^10||^11`.

**Security:** store the DropWatch token as a **secret**; HTTPS; mind what data is sent (avoid sensitive
data). No access role beyond permission.
