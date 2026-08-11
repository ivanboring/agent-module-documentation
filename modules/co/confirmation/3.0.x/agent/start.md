<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Confirmation — agent index

**Confirmation-entity framework** (confirm/disconfirm via `/confirmation/{id}/{hash}`). Version **3.0.1**. Core `^10||^11`.

**SECURITY (3.0.1):** response route `_access: TRUE` and the `{hash}` capability token is NEVER validated; integer ids are enumerable → anyone can confirm/disconfirm arbitrary confirmations. Add a `hash_equals` check before production use.