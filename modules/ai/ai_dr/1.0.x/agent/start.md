<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# AI Deep Reference (ai_dr) — agent index

**Registers tokens that expose referenced taxonomy-term descriptions (`[term:description]`, `[node:term-description:FIELD]`).**

- **Version:** 1.0.x (1.0.0-alpha1)  •  **Core:** ^10 || ^11  •  **Package:** AI
- **Depends on:** token
- **Implementation:** `hook_token_info` + `hook_tokens` only. No routes, permissions, services, or config.

**Security:** no endpoints or permissions; tokens resolve read-only term text within existing render contexts. No security-relevant surface.
