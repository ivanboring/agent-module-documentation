<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Monitoring Endpoint — agent index

JSON status endpoint (`/monitoring/status`) for external monitors — returns **Monitoring sensor + cron
status**, gated by `?token=` matched to `endpoint_key`. Requires PHP 8.1; depends on `monitoring`. Version
**1.0.1**. Core (per project).

**SECURITY (see `security.md`, finding):** `endpoint_key` **defaults to `''`**, and the check allows when
`token === endpoint_key`, so `?token=` (empty) matches → **unauthenticated status disclosure by default**
(verified: anon `?token=` → HTTP 200 full sensor JSON; wrong/missing token → 403). **Set a non-empty key
immediately.** Also uses `===` not `hash_equals()` (minor). Serve over HTTPS.
