<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Cryptolog — agent index

**Privacy:** an HTTP middleware replaces the client **IP address with an ephemeral, non-reversible
identifier** (128-bit keyed hash in IPv6 notation) before Drupal reads it — raw IPs stay out of logs
and DB (GDPR data minimization) while the salt's lifetime keeps short-term per-visitor correlation
(unique-IP stats, IP-based flood control). Config at `cryptolog.settings`
(`/admin/config/people/cryptolog`, needs `administer site configuration`). Version **2.3.0**.
Core `^11.2 || ^12`.

Positive privacy control. **Trade-off:** features needing the true client IP (precise geolocation, IP
allow-lists, forensics) won't see it — tune the salt TTL to match your needs.

## Configure (`cryptolog.settings` config object)
- `single_webhead` (bool, default `FALSE`) — if TRUE and APCu is available, store the salt solely in
  APCu (never on disk). Leave FALSE on multi-node sites so the salt is shared via the default cache
  backend (use Memcache/Redis to keep it off disk).
- `ttl` (int seconds, default `86400`) — salt lifetime; on expiry the salt regenerates and every IP
  maps to a new pseudonym. Keep it larger than your flood-control window; the form enforces a min from
  `user.flood` (`ip_window` or `user_window`).
- Settings form also: shows storage backend + time-to-expiry, a "Regenerate salt now" checkbox
  (invalidates cache key `cryptolog`), and reverse-proxy diagnostics (original IP, trusted-proxy status,
  restored HTTP host/scheme).

## Notes
- No custom permissions, Drush commands, plugin types, or module dependencies.
- Requires PHP compiled with IPv6 support (install requirement); APCu recommended for performance.
- Hashing: Sodium `sodium_crypto_generichash` when available, else `hash_hmac('md5', …)` with a random
  32-byte salt.
- Changing `single_webhead` or `ttl` invalidates the service container (ConfigSubscriber).
