<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Webform Remote Select (webform_remote_select) — agent index

Webform **select element populated from a remote endpoint URL** (server-side fetch). Version **1.0.9**.

**SSRF surface:** the endpoint URL is an admin-set element setting (low risk static) — but it's
**token-enabled** and the fetch has the submission, so a token resolving to **user-submitted data**
lets a submitter steer the server's request to internal services. Keep the URL **static/
admin-controlled**, don't build it from user-data tokens, allow-list destinations if dynamic,
restrict who builds these forms. (Same class as `rules_http_client`.)