<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Security Login Secure (security_login_secure) — agent index

Brute-force protection (IP + account blocking on failed logins), by **miniOrange**. Version **3.0.1**.

**WARNING (verified — see `security.md`, danger 3):** it disables **TLS certificate verification**
(`CURLOPT_SSL_VERIFYPEER, FALSE`) on **8** calls to miniOrange's API — incl. registration, **API-key
retrieval** (`/rest/customer/key`) and auth challenge — and one also disables `VERIFYHOST` (comment:
`// required for https urls`, the opposite of true). A MITM during setup can steal the API key/
credentials. A *security* module disabling TLS on its own credential exchange. **Patch the VERIFYPEER/
VERIFYHOST overrides before trusting it.**

The brute-force feature itself is legitimate (usual IP-ban caveats: shared-IP false positives, real
client IP behind a proxy).