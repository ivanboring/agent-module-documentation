<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# YooMoney / YooKassa (yoomoney) — agent index

Payment acceptance via **YooMoney/YooKassa**. Machine name `yookassa`. Version **1.2.1**.

**WARNING (verified — see `security.md`, danger 3):** it hardcodes Guzzle **`'verify' => false`** on
two requests to the payment provider — `YooKassaOauth::sendRequest()` (the OAuth credential/token
exchange) and `YooKassaLoggerHelper::makeRequest()` — **disabling TLS certificate verification**. The
OAuth one is MITM-able: an attacker can intercept the token/shop credentials. **Do not run in
production until `'verify' => false` is removed from both** (Guzzle verifies by default). Also confirm
incoming YooKassa notifications are signature-verified on adoption.