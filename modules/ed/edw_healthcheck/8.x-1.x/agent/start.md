<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# EDW Health check monitoring (edw_healthcheck) — agent index

Exposes Drupal and module **status and versions as JSON** at `/edw_healthcheck/{type}`, for external
monitoring. Depends on core `update` and **`basic_auth`**. Version **8.x-1.31**.
Core requirement `^8 || ^9 || ^10 || ^11`.

**The access model is correct, and is the thing to check on any module of this kind:**
```yaml
edw_healthcheck.status:
  options:
    _auth: ['basic_auth', 'cookie']
  requirements:
    _permission: 'edw healthcheck access'
```
A monitoring system authenticates as a **dedicated account over HTTP basic auth** — the endpoint is
not open.

**That matters because the payload is a reconnaissance document.** An exact list of installed
modules with **exact versions** is precisely what an attacker wants: it turns "try known Drupal
exploits" into "look up the advisories for these versions". **A site exposing it anonymously has
published its own vulnerability inventory.**

**Two operational points:**
1. **The monitoring account should hold that permission and nothing else**, with credentials kept
   wherever the monitoring system keeps secrets — not a shared password.
2. **Basic auth sends the password on every poll**, so the endpoint needs **TLS**. Obvious, and
   exactly what gets missed on an internal monitoring path nobody thinks of as public.

**Why it is worth having:** asking each site's update report by hand does not scale past a handful;
a nightly poll across a fleet is how the fleet actually gets patched.
