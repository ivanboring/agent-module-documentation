<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Challenge Mitigation provides mitigation on selected paths.

---

Challenge Mitigation applies **mitigation on selected paths** — challenging/throttling requests to
configured paths to reduce abuse (bot traffic, brute force, scraping) on sensitive endpoints. It provides its
own permissions, in the security package.

Use it to protect specific paths from abuse. This is a **security/anti-abuse-positive** feature. As with any
application-layer mitigation, set expectations: it acts once requests reach Drupal, so it mitigates
application-layer abuse on the chosen paths but is not a substitute for a CDN/WAF against volumetric attacks;
tune which paths and thresholds to your needs. It has no access-control role beyond its permission. Configure
the protected paths and mitigation.

---

- Mitigate abuse on selected paths.
- Challenge/throttle requests.
- Reduce bot/brute-force/scraping.
- Provide its own permissions.
- Protect sensitive endpoints.
- Act at the application layer.
- Use a CDN/WAF for volumetric attacks.
- Tune paths and thresholds.
- Have no access-control role beyond permission.
- Configure protected paths.
- Handle path mitigation.
- Protect paths.
- Configure mitigation.
- Handle the challenge.
- Throttle paths.
- Configure thresholds.
- Handle abuse.
- Mitigate requests.
- Set the paths.
- Provide path mitigation.
