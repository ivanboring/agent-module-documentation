# Bakery Single Sign-On — manual setup guide

**Bakery Single Sign-On** (`bakery`) lets a user log in once and be recognised
across several Drupal sites that share a second-level domain — `app.example.com`,
`docs.example.com`, `shop.example.com`, and so on. One site is designated the
**parent**: it authenticates the user and issues a cookie. The other **child**
sites read that cookie and trust it to establish the same session. It is the
classic single-sign-on problem within one organisation, solved the cookie way.

Because the cookie *is* the cross-site authentication token, the entire security
of the scheme rests on how that cookie is signed, verified and read — and this
module's handling was reviewed closely (see the security notes below). The
mechanism is fundamentally sound: the cookie is signed with **HMAC-SHA256** using
a shared `bakery_key`, the payload is encrypted, there is a freshness check to
bound its lifetime, and — importantly — the signature is verified *before* the
payload is deserialized.

The shared **`bakery_key` is a master credential.** It must be identical on every
site in the group, and anyone who obtains it can forge an SSO cookie for any user
on any of those sites. Treat it with the seriousness of a master password: keep
it out of Git, out of configuration exports, and out of database dumps. See
[Configuration](configuration/index.md) for how to set the parent/child roles and
handle that key.

This module ships as a **3.x dev** release and supports Drupal 10.2 and 11.

This guide is written for a **human** clicking through the admin UI. If you want
terse, token-cheap references for an AI coding agent, read the sibling
[`agent/`](../agent/start.md) docs instead — and the module's own `security.md`
for the full review.

## Contents

1. [Installation](installation/index.md) — install with Composer and enable it
   on the parent and each child site.
2. [Configuration](configuration/index.md) — set the parent/child roles, share
   the `bakery_key` safely, and the freshness window.

## Security notes worth knowing (from the review)

The design is sound and the critical ordering — verify the signature before
deserializing — is correct. Two things the maintainers may still improve, neither
a turnkey bypass:

- The signature is compared with PHP's `!==` rather than the constant-time
  `hash_equals()`. That is a textbook timing-side-channel in authentication code;
  network-impractical to exploit, but a one-line best-practice fix.
- The signed payload is PHP-`serialize`d rather than JSON. It is safe today
  because the signature is checked first, but if the shared key ever leaked, that
  choice would widen "SSO forgery" into potential object injection. JSON would be
  safer defence-in-depth.

Both reinforce the same operational point: **guard the `bakery_key`.**
