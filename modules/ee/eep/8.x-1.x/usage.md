<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Email Enumeration Prevention prevents account email enumeration from the register form and password reset form.

---

Email Enumeration Prevention (eep) closes account **enumeration** oracles on the **registration** and
**password-reset** forms — the default Drupal messages differ depending on whether an email/username already
exists, which lets an attacker probe for valid accounts; eep normalizes those responses so an outsider can't
tell a registered address from an unregistered one. It depends on core User and Token, is configured at
`eep.settings`, provides its own permissions, in the Security package.

Use it to harden signup/password-reset against user enumeration. This is a **security-positive** feature
(anti-enumeration / privacy hardening). To keep it effective: enable it on **both** the register and
password-reset flows, and be aware enumeration can also leak via **timing** or other endpoints (JSON:API/REST
user routes, login errors) — eep addresses the two forms it targets, not every possible oracle. It has no
access-control role beyond its permission. Configure the messages/behaviour.

---

- Prevent account enumeration.
- Normalize register-form responses.
- Normalize password-reset responses.
- Hide whether an email is registered.
- Depend on core User and Token.
- Configure at eep.settings.
- Harden signup/password reset.
- Cover both targeted forms.
- Be aware of timing/other-endpoint oracles.
- Provide its own permissions.
- Have no access-control role beyond permission.
- Configure the messages.
- Handle enumeration prevention.
- Block user probing.
- Configure eep.
- Protect account privacy.
- Handle the hardening.
- Prevent probing.
- Configure prevention.
- Reduce enumeration.
