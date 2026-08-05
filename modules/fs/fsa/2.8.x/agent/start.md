<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Fastly Streamline Access (project `fsa`, module `fastly_streamline_access`) — agent index

Adds an authenticated user's IP to a **Fastly ACL**, for environments shielded at the edge
(Lagoon-style). Core requirement `^10.2 || ^11`.
Config at `/admin/config/development/fastly_streamline_access` (`administer site configuration`).
Submodule: `fastly_streamline_access_admin`.

> **Project and module names differ** — `drush en fsa` fails; use `drush en fastly_streamline_access`.

> ## The added IP comes from a client-settable header
>
> `getClientIp()` returns `$_SERVER['HTTP_FASTLY_CLIENT_IP']` when set — PHP's view of an arbitrary
> **`Fastly-Client-IP:`** request header. Verified: `curl -H 'Fastly-Client-IP: 203.0.113.66'`
> produced exactly that value. It flows into `addAclMember()`.
>
> So a holder of **`access protected lagoon routes`** — the permission granted to the people who
> *should* get in — can add **any** address to the ACL, not just their own, extending network
> access to unauthenticated third parties.
>
> Drupal already solves this: the fallback branch `\Drupal::request()->getClientIp()` honours
> **trusted proxies** (`reverse_proxy`, `reverse_proxy_addresses`, `reverse_proxy_header` in
> `settings.php`). Reading `$_SERVER` directly bypasses that check. See the local `security.md`.

Key facts:
- `fsaResponse()` fires on the module's own event; failures of the Fastly call are **caught and
  logged**, so a misconfiguration is silent — check the log when access is not granted.
- **Nothing expires ACL entries.** Membership is additive; a stale allow-listed IP is an access
  path nobody reviews. Plan a retention/cleanup process.
