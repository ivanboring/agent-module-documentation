<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Commerce License Access Control grants access to specific content based on a customer holding an active Commerce License — content gated by a purchased license.

---

Selling access to content — a members-only area, paid articles, a course — needs the purchase to translate into access. Commerce License Access Control ties content access to Commerce License: a customer who holds an active license for a product gains access to the associated content. Because it is genuine access control (not display gating), it should enforce at the access layer, and the operator's job is to confirm the mapping between licenses and content is correct and that access is revoked when a license expires or is cancelled. As with any paid-content gate, verify that the protected content is not reachable by a path that bypasses the license check (direct file URLs, JSON:API, other view modes) — the license check must govern actual entity/file access, not just the rendered page.

---

- Gate content by a Commerce License.
- Sell access to members-only content.
- Grant access on license purchase.
- Revoke access on license expiry.
- Map licenses to content.
- Build a paid-content area.
- Sell course access.
- Confirm access is revoked on cancel.
- Verify no bypass paths.
- Enforce at the access layer.
- Protect files behind a license.
- Check JSON:API doesn't leak content.
- Gate a paywall properly.
- Tie purchase to access.
- Manage licensed content.
- Verify the license mapping.
- Enable when needed.
- Keep disabled otherwise.
- Restrict administration.
- Confirm on your site.
- Test before production.
- Review configuration.