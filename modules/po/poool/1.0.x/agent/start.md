<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Poool — agent orientation

Client-side integration for the Poool Access SaaS paywall.

- Version 1.0.x, core `^8||^9||^10`. Settings `/admin/config/services/poool` (`administer site configuration`). Public application id (regex-validated), no secret key.
- Attaches `assets.poool.fr/poool.min.js` (HTTPS) + a `poool-widget` div; `data-poool`/`data-poool-mode` on fields. Premium decided via `PooolUserIsPremiumEvent`.
- SECURITY: paywall is CLIENT-SIDE only — full content is in the DOM, hidden by JS; trivially bypassable (view source / disable JS). This is Poool's soft-paywall model, not a module bug. `unserialize()` of editor-set field settings (privileged). No TLS/key issue.