<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Translation Centre (CdT) — agent index

**TMGMT translator for the EU Translation Centre (CdT, cdt.europa.eu)**. Depends on `tmgmt`. Version
**8.x-1.10**. Core `^10||^11`.

**SECURITY CAVEAT — TLS disabled by default:** the default `tmgmt_cdt.curl_options` sets
`CURLOPT_SSL_VERIFYHOST:0` **and** `CURLOPT_SSL_VERIFYPEER:0`, applied to CdT API requests carrying the
`api_password`/`api_access_token` + content → **MITM can capture credentials + tamper translations**. It's a
config **default** (overridable) — **override `tmgmt_cdt.curl_options` to `VERIFYPEER:1`/`VERIFYHOST:2`**
before use; HTTPS; credentials as secrets. Same class as `webt`. See `security.md`.
