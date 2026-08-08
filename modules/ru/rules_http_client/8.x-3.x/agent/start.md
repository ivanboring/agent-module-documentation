<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Rules HTTP Client (rules_http_client) — agent index

Adds a **Rules action for HTTP requests** (call an external URL from an automation). Version
**8.x-3.2**. Depends on Rules.

**SSRF surface:** the action makes the **server** fetch a URL. Low risk when the URL is static/
admin-configured; **an SSRF hole when the URL (or parts) come from user-controlled data** via a Rules
data selector — an attacker could steer the server to internal services. Allow-list destinations,
prefer static URLs, restrict who can build Rules.