<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Bitaps Payment (bitaps) — agent index
**Cryptocurrency payment gateway for the contrib Basket commerce module via the Bitaps service.**

- **Version:** 1.1.x
- **Core:** ^10 || ^11 || ^12
- **Configure:** `/admin/config/development/bitaps` (`bitaps.settings`, permission `access bitaps settings`, `restrict access: true`).
- **Routes:** `bitaps.pages` → `/bitaps/{page_type}` (`_permission: access content`) serving `pay` (payment form) and `status` (Bitaps callback).
- **Service:** `Bitaps` (DB CRUD on `payments_bitaps`, `getHash()` SHA-256 over id+amount+secret).
- **Basket plugin:** `BasketBitaps`.

**Security:** Already security-reviewed for this knowledge base — a finding is recorded separately (do not re-file). Notable posture: the `/bitaps/status` callback runs under `access content` and authorizes status changes by a shared-secret SHA-256 hash comparison against the `hash` query param; it reads raw `$_POST`/`$_GET` and `@unserialize()`s stored payment data. The security-review doc for this version lives alongside these docs.
