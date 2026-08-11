<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
A framework of confirmation entities for confirm/disconfirm (double-opt-in style) actions via a link.

---

Confirmation provides a framework of confirmation entities — each represents a pending action a user can confirm or disconfirm via a link (`/confirmation/{confirmation}/{hash}`), with a per-entity hash meant as the capability token and an optional expiry — useful for double-opt-in, approval, or verification flows that integrating modules build on (the response form is meant to be made pluggable per bundle).

**Security note (as shipped, 3.0.1):** the response route is `_access: 'TRUE'` (anonymous) and the `{hash}` capability token in the URL is **NOT validated** anywhere, while confirmation IDs are sequential integers — so an attacker can enumerate `/confirmation/<n>/anything` and confirm/disconfirm arbitrary confirmations. Add a `hash_equals($confirmation->getHash(), $hash)` check (route `_custom_access` or form access) before relying on this in production. Supports Drupal 10 and 11.

---

- Provide confirmation entities.
- Model pending confirm/disconfirm actions.
- Respond via a link + hash.
- Support double-opt-in/approval flows.
- Carry a per-entity hash + expiry.
- Be pluggable per bundle.
- WARNING: the URL `{hash}` is NOT validated.
- Use `_access: TRUE` on the response route.
- Allow ID enumeration (integer ids).
- Need a `hash_equals` check added.
- Depend on Drupal core only.
- Support Drupal 10 and 11.
- Confirm actions
- Handle confirmations
- Support Drupal.
