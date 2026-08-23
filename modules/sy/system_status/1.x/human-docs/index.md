# System Status — manual setup guide

**System Status** (`system_status`) exposes a machine-readable JSON endpoint that
reports your site's installed modules, themes and versions, so an external monitoring
service can poll it and tell you what needs updating. It is built to work with the
Lumturio monitoring platform: instead of every Drupal site checking for updates on
its own cron run, a central dashboard contacts each site, asks for its current module
inventory, and calculates the upgrade path for you across many installations at once.

Once enabled, you visit the module's settings page, copy your **site UUID**, and
enter that in your monitoring dashboard to register the site. The endpoint is
guarded by a URL token, and where the environment supports it the module encrypts the
inventory payload for the monitoring client. It has no module dependencies and ships
no submodules, and the admin settings route is correctly permission-gated.

**Please read this security caveat before exposing the endpoint.** The reporting
endpoint's security rests entirely on its URL token, and this version's token is
weak: it is generated with PHP's `shuffle()` (not a cryptographically secure random
source) and compared with a loose `==` (not constant-time, and vulnerable to PHP
type-juggling for certain token forms — so a token that happens to take a
`0e[digits]` shape can be bypassed by supplying `0`). On top of that, the endpoint
always returns the Drupal and PHP versions in cleartext even on the encrypted path,
and if openssl is unavailable it returns the **entire module-and-version inventory in
clear** — which is exactly the fingerprint an attacker uses to pick version-specific
exploits. The endpoint is read-only (it discloses, it does not change anything), but
you should treat it as **effectively unauthenticated reconnaissance** and restrict it
at the web-server layer — for example, IP-allowlist your monitoring source — rather
than trusting the token to guard it. The admin settings page itself is properly gated
by the **Administer site configuration** permission; the exposure is the reporting
endpoint.

This guide is written for a **human** setting the module up through the admin UI. If
you are an AI coding agent, read the sibling [`agent/`](../agent/start.md) docs
instead.

## Contents

1. [Installation](installation/index.md) — install the module with Composer and
   enable it.
2. [Configuration](configuration/index.md) — find your site UUID, register the site,
   and lock the endpoint down.

## Where it lives in the admin menu

Once enabled, the settings page is at
**Configuration → System → System Status** (`/admin/config/system/system_status`),
where you copy your site UUID to paste into your monitoring dashboard. The reporting
endpoint lives under `/admin/reports/system_status/{token}` and is what the
monitoring service actually fetches.
