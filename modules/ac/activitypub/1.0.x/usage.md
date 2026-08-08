<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
ActivityPub connects your site with the Fediverse, letting it federate content via the ActivityPub protocol.

---

ActivityPub connects a Drupal site with the Fediverse — implementing the ActivityPub protocol so the
site can publish activities to and receive activities from other servers (Mastodon etc.), with actors,
inboxes/outboxes, followers and a reader/timeline. It depends on core Image, ships many submodules (api,
comment, mastodon_api, reader, scheduler), is configured at `activitypub.settings`, provides Drush commands
and its own permissions, in the ActivityPub package.

Use it to federate a Drupal site into the Fediverse. **Security caveat for this alpha (1.0.0-alpha26):
inbound HTTP-signature verification is incomplete.** ActivityPub relies on HTTP signatures to prove an
incoming activity genuinely came from the claimed remote actor. In this version, when signature verification
**fails** (including a missing or invalid signature — `verifySignature()` returns false rather than
rejecting), the inbox controller falls back for "timeline" activity types to publishing the activity anyway
**if the claimed actor is followed by any local user**. The module's own settings UI documents this
("signature verification is not 100% done yet … we allow posts … in case the actor is a followee"). The
consequence is that an attacker can post unsigned/forged activities to the inbox impersonating a followed
actor, and they may be published to the local timeline as genuine (fediverse content spoofing / impersonation
/ malicious-link injection). Until upstream requires a valid signature, treat the incoming-timeline content
as **not authenticated**: be cautious about trusting/displaying federated content as verified, keep the
module updated, and prefer the "require follow" and blocked-domains settings. It is a federation/integration
feature. Configure the ActivityPub actors and settings.

---

- Federate the site into the Fediverse.
- Implement the ActivityPub protocol.
- Publish/receive activities.
- Support actors, inboxes, followers.
- Provide a reader/timeline.
- Ship api/comment/mastodon/reader submodules.
- KNOW inbound signature verification is incomplete (alpha).
- Understand failed signatures can still publish (followee fallback).
- Treat incoming timeline content as NOT authenticated.
- Be cautious displaying federated content as verified.
- Keep the module updated.
- Use require-follow and blocked-domains settings.
- Provide Drush commands and permissions.
- Configure at activitypub.settings.
- Connect to Mastodon etc.
- Depend on core Image.
- Handle federation.
- Configure ActivityPub actors.
- Publish to the Fediverse.
- Receive federated activities.
