# Consumer Client IP — manual setup guide

**Consumer Client IP** (`consumer_client_ip`) solves a narrow but real problem in
decoupled setups: when requests reach Drupal through something that carries the real
visitor's IP in a **non‑standard header** — say a serverless function or a CDN that
uses `X-Client-IP`, `CF-Connecting-IP`, or `True-Client-IP` — Drupal's normal
client‑IP detection doesn't see it. This module, integrated with the **Consumers**
module, takes the value of a header you nominate and writes it into the standard
`X-Forwarded-For` header on the incoming request, so Drupal's usual reverse‑proxy
resolution then reports that value as the client IP. In practice this is what makes
core's **flood control / rate limiting** (and anything else that keys off the
client IP) work correctly behind such an edge. It depends on the Consumers module
and supports Drupal 10.3 and 11.

**This module has an important security precondition — read it before enabling.**
The module *trusts whatever value is in the header it maps.* That is only safe if
the header is one your **trusted upstream proxy or CDN sets, and strips from any
inbound client input.** If the mapped header is something a client can send directly
(and Drupal is configured to trust `X-Forwarded-For` via `reverse_proxy` and
`reverse_proxy_addresses` in `settings.php`), then an attacker can **spoof their
apparent IP address** — defeating IP‑based access rules, flood/rate limiting,
geolocation, and the integrity of your logs. The module has no access‑control role
of its own; it only remaps a header.

So the rule is: **only map a header your edge injects**, make sure the edge
overwrites or removes any client‑supplied copy of it, and pair this with correct
`reverse_proxy` trust settings in `settings.php`. Configured that way it is a
useful, safe bridge; configured carelessly it opens IP spoofing. Note the project's
own description leads with this warning, and it *is* covered by Drupal's security
advisory policy.

Because it configures through the Consumers entity rather than a page of its own,
the setup is covered here under "How to use it".

This guide is written for a **human** clicking through the admin UI. If you want
terse, token‑cheap references for an AI coding agent, read the sibling
[`agent/`](../agent/start.md) docs instead.

## Contents

1. [Installation](installation/index.md) — install with Composer and enable the
   module and the Consumers dependency.

There is **no dedicated settings page** — configuration happens per consumer (see
"How to use it" below), together with your site's `reverse_proxy` settings.

## Where it lives in the admin menu

Consumer Client IP works through the Consumers module rather than adding a page of
its own. You manage consumers at **Configuration → Web services → Consumers**
(`/admin/config/services/consumer`); the trusted‑proxy side lives in
`settings.php`.

## How to use it

1. **Decide which header carries the real client IP** at your edge — for example
   `CF-Connecting-IP` (Cloudflare) or `True-Client-IP`. It must be a header your
   proxy/CDN sets and strips from inbound client requests.
2. **Enable the mapping for the relevant consumer** and set that header as the
   source, via the Consumers configuration at **Configuration → Web services →
   Consumers**. When enabled for a request's negotiated consumer, the module copies
   the header's value into `X-Forwarded-For`.
3. **Configure trusted reverse proxies** in `settings.php` — set `reverse_proxy`
   and `reverse_proxy_addresses` so Drupal only trusts `X-Forwarded-For` from your
   actual proxy addresses. This step is what keeps the mapping from being
   spoofable.
4. **Verify** that `\Drupal::request()->getClientIp()` (and IP‑dependent features
   like flood control) now report the real visitor IP rather than the edge's, and
   that a request sending the header directly from outside your proxy does **not**
   change the detected IP.
