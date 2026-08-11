<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Provides a [consumers:current-name] token replaced by the requesting consumer's name.

---

Consumers Token provides a token `[consumers:current-name]` for consumers name replacement depending on which consumer requested it — so text/config using the token resolves to the name of the API consumer making the current request, useful for per-consumer messaging in a decoupled setup. Depends on `consumers`; supports Drupal 8 through 11.

---

- Provide a `[consumers:current-name]` token.
- Resolve to the requesting consumer's name.
- Vary text by API consumer.
- Support per-consumer messaging.
- Serve decoupled/headless setups.
- Integrate with the Token system.
- Depend on `consumers`.
- Support Drupal 8 through 11.
- Configure token use.
- Aid decoupled sites.
- Replace consumer names.
- Handle consumer tokens
- Support Consumers
- Resolve tokens
- Support Drupal.
