<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Commerce CyberSource (commerce_cybersource) — agent index

Commerce payment gateway for **CyberSource** (Secure Acceptance Hosted Checkout + Flex Microform).
Version **8.x-1.8**.

**Security done right (positive, verified):** SAHC/Flex → card data goes to CyberSource, not the
server (PCI scope). The **response signature IS verified** — `validateResponse()` recomputes
HMAC-SHA256 over the signed fields and rejects on mismatch; `onReturn()` throws on failure (forged
'accepted' callbacks rejected). **Minor:** the compare is `==` not `hash_equals()` (timing, low
severity — indexed). Keep the secret key / credentials out of plain config.