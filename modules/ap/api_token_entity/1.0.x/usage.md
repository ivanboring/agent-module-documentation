<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
API Token Entity provides API token entities with types for authenticating API access.

---

API Token Entity lets you create, manage, and consume API tokens — modeling tokens (and token types) as entities so other modules/custom code can issue and validate API tokens for authenticating API requests, with expiry support via core datetime.

Because tokens are credentials, store/handle them securely (validate with constant-time comparison, set expiries) and restrict token administration to trusted roles via `administer api_token_entity entities`. Depends on core `datetime`; requires Drupal 11.3+.

---

- Create API tokens as entities.
- Manage token types.
- Consume/validate tokens.
- Authenticate API requests.
- Support token expiry (datetime).
- Treat tokens as credentials.
- Validate securely (constant-time).
- Gate admin with `administer api_token_entity entities`.
- Restrict token admin to trusted roles.
- Depend on core `datetime`.
- Require Drupal 11.3+.
- Issue tokens.
- Manage tokens
- Handle expiry
- Support API auth.
- Store tokens securely.
- Consume tokens.
- Provide a token framework
