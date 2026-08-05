<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Let's Encrypt Challenge (letsencrypt_challenge) — agent index

Serves the ACME **HTTP-01** challenge response from Drupal. No dependencies.
Core requirement `^8 || ^9 || ^10 || ^11`. **Release is 1.2.0-beta1 — beta.**
Admin form at `/admin/config/letsencrypt_challenge/challenge`, permission
`administer letsencrypt challenge`.

| Route | Path | Requirements |
|---|---|---|
| `…challenge_controller_content` | `/.well-known/acme-challenge` | `_access: 'TRUE'`, GET, `_disable_route_normalizer` |
| `…challenge_controller_content_key` | `/.well-known/acme-challenge/{key}` | same |

Key facts:
- **`_access: 'TRUE'` is correct here** — Let's Encrypt's validation server is unauthenticated by
  protocol design, and the challenge value is a public token, not a secret.
  `_disable_route_normalizer: 'TRUE'` is also correct: the path must be served exactly as
  requested.
- The value is stored in **state**, not config
  (`$this->state->get('letsencrypt_challenge.challenge', '')`) — the right choice for a
  short-lived token, and it means the token does not appear in a config export.
- **`{key}` is ignored.** `ChallengeController::content()` returns the same stored value for any
  key, so it serves the single-challenge manual flow, not several concurrent challenges (e.g. a
  multi-domain issuance requesting several tokens at once).
- For **manual** ACME mode only. An automated client that can write to the docroot does not need
  this module — and if one is running, it and this module will fight over the same path.
