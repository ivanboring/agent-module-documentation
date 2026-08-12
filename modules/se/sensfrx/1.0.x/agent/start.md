<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# SensFRX Fraud Prevention — agent index

**SensFRX fraud-detection integration** (user + Commerce screening). Version **1.0.2**. Core `^10||^11`.

**SECURITY (1.0.2):** `/sensfrx/webhook` + `/sensfrx/transaction_webhook` are `_access: TRUE` and act on an **unsigned** body → anonymous can force any order to completed/canceled+refund; outbound API cURL sets `CURLOPT_SSL_VERIFYPEER=false` (MITM). Also broken without Commerce Payment (unguarded `PaymentEvents`). Verify signatures + enable TLS. Depends on core `user`/`system`/`node`/`comment`.