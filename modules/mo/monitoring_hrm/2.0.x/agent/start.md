<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Monitoring HRM (monitoring_hrm) — agent index

Single endpoint **`/healthz`** whose HTTP status says whether any **Monitoring** sensor is failing.
Version **2.0.0**. Core `^10.2 || ^11`, **PHP 8.1**. Depends on `monitoring:monitoring`.

Route requirement is a **custom access check**, `_monitoring_hrm_endpoint_access: 'TRUE'`, not a
permission — correct for a machine caller with no session.

**Review what that check allows before deploying.** The two failure modes are opposite and both
bad: an endpoint requiring authentication makes the probe always report unhealthy; an endpoint open
to the internet tells anyone whether your internals are degraded, which is reconnaissance.

Usual arrangement: restrict `/healthz` at the network layer to the probing infrastructure, and be
explicit about it in the deployment.