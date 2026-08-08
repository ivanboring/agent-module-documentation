<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Email Enumeration Prevention (eep) — agent index

Prevents account **email/username enumeration** via the **registration** and **password-reset** forms
(normalizes the differing default messages that reveal whether an account exists). Depends on core `user`,
`token`. Config at `eep.settings`; provides permissions. Version **8.x-1.5**. Core `^8||^9||^10||^11`.

**Security-positive** (anti-enumeration). Enable on both flows; note enumeration can also leak via **timing**
or other endpoints (JSON:API/REST/login) — eep covers the two forms it targets. No access role beyond
permission.
