<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Commerce MAIB — agent index

Drupal Commerce **payment gateway for MAIB (Moldova Agroindbank)** — offsite redirect + API confirmation.
Depends on `commerce`. Version **1.0.8**. Core `^8.8||^9||^10||^11`.

**Security (correct):** certificate-based + server-authoritative — authenticates with a **client certificate
(from the bank PFX)** + RSA keys and confirms the transaction by **querying MAIB's API server-side** (not a
client result). Store the cert/private key + PFX password securely (outside web root, never committed);
HTTPS.
