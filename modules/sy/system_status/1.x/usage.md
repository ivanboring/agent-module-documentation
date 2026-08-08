<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
System Status exposes a token-authenticated JSON endpoint reporting the site's installed modules, themes and versions, for external monitoring — plus a settings page.

---

Operations teams monitoring many Drupal sites want to poll each one for its module and version inventory — to know what is installed, what needs updating, and what is exposed to a new advisory — without logging into each. System Status provides that as a machine-readable endpoint: a JSON report of installed modules, themes and versions at a token-guarded URL that a central monitoring system can fetch.

That design — a network-reachable reconnaissance endpoint guarded by a URL token — puts all the security weight on the token, and this module's implementation of that guard is weak in ways worth knowing before exposing it (detailed in the local security notes). The token is generated with `shuffle()` (not a cryptographically secure source) and compared with `==` (non-constant-time, and vulnerable to PHP type-juggling for certain token forms), and the endpoint returns the PHP and Drupal versions in cleartext regardless of its payload encryption — so a caller who reaches it gets a version fingerprint, and the full module inventory if openssl is unavailable. The inventory is exactly the target map an attacker uses to select version-specific exploits.

So while the module solves a real operational need, its status endpoint should be treated as effectively unauthenticated reconnaissance until the token generation and comparison are hardened, and restricted at the web-server layer (IP allowlist the monitoring source) rather than relied on to guard itself. The admin settings route is correctly permission-gated; the exposure is the reporting endpoint.

---

- Report installed modules and versions.
- Monitor a site's update status.
- Poll a JSON status endpoint.
- Inventory modules remotely.
- Feed a central monitoring system.
- Check what needs updating.
- Report themes and versions.
- Track many sites' status.
- Restrict the endpoint by IP.
- Treat the endpoint as reconnaissance.
- Harden the token before exposing.
- Allowlist the monitoring source.
- Encrypt the payload for a client.
- Understand version fingerprinting.
- Avoid relying on the URL token alone.
- Gate the settings page by permission.
- Provide machine-readable status.
- Audit the module inventory.
- Poll for available updates.
- Monitor Drupal fleet health.