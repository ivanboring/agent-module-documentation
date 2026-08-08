<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Commerce License Access Control (commerce_license_access_control) — agent index

Grants content access based on an **active Commerce License** (paid-content gating). Version
**8.x-1.2**.

**Real access control — verify it holds everywhere.** Confirm the license→content mapping is correct,
access is **revoked on expiry/cancel**, and the protected content is **not reachable by a bypass
path** (direct file URLs, JSON:API, other view modes) — the license check must govern entity/file
access, not just the rendered page. (Contrast `nopremium`, which gates display only.)