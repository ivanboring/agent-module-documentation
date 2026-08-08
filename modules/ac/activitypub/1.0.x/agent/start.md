<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# ActivityPub — agent index

Connects a Drupal site with the **Fediverse** (ActivityPub — actors/inbox/outbox/followers/reader; Mastodon
etc.). Submodules: api/comment/mastodon_api/reader/scheduler. Depends on core `image`; Drush + permissions.
Config at `activitypub.settings`. Version **1.0.0-alpha26**. Core `^10||^11`.

**SECURITY CAVEAT (alpha):** inbound **HTTP-signature verification is incomplete** — on signature FAILURE
(incl. missing/invalid sig, which `verifySignature()` returns false for), the inbox **publishes "timeline"
activities anyway if the claimed actor is followed by anyone** (self-documented). → unauthenticated **actor
spoofing / timeline content injection**. Treat incoming federated content as **not authenticated**; keep
updated; use require-follow/blocked-domains. See `security.md`.
