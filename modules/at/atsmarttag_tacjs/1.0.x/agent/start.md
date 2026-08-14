<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# AT Internet SmartTag for TacJS (atsmarttag_tacjs) — agent index

**Registers the AT Internet SmartTag analytics service as a consent-gated tag in the TacJS consent manager.**

- **Version:** 1.0.x (1.0.0)  •  **Core:** ^9.5 || ^10 || ^11  •  **Package:** Statistics
- **Depends on:** tacjs, atsmarttag
- **Implementation:** `hook_tacjs_content_alter()` (declares the `atinternet_smarttag` analytic service) + `hook_page_attachments()` (attaches JS on non-admin pages).  **Library:** `atsmarttag_tacjs/atsmarttag_tacjs`.
- No routes, permissions, or config of its own.

**Security:** no endpoints, permissions, or secrets; client-side tag loading gated by TacJS consent. No security-relevant surface of its own.
