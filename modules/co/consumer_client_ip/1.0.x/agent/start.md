<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Consumer Client IP — agent index

**Maps a configurable HTTP header's value into `X-Forwarded-For`** each request. Depends on `consumers`. Version
**1.0.1**. Core `^10.3||^11`.

Networking/proxy — **security precondition**: the mapped header must be set by a **trusted proxy and stripped from
client input**. If it's client-settable and Drupal trusts XFF (`reverse_proxy`), a client can **spoof their IP**,
defeating IP access rules / flood control / geo / logging. Only map an edge-injected header; pair with correct
`reverse_proxy` settings. No access role of its own.
