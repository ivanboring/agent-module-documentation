<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Config Token lets administrators define custom tokens whose values are stored in configuration, for reuse across content and other tokens.

---

Drupal's token system is everywhere — in text, in other modules' settings, in patterns — but the set of tokens is fixed by what modules provide. Sites often have a handful of values they repeat: a support phone number, a company name, a current campaign tag, a legal entity. Hard-coding those in content means editing every occurrence when they change; Config Token makes them a defined token instead.

An administrator defines custom tokens, each with a value stored in configuration, and they become available wherever tokens are used — so `[config_token:support_phone]` resolves to the configured number everywhere it appears, and changing it is one edit. It turns repeated constants into a single source of truth.

Because the values live in configuration, they travel with a config export like any other setting, and the tokens are only as trustworthy as who can edit them — a token used in many places is a lever, so administration should be restricted to trusted roles. The values are plain configuration and not a place for secrets (they are readable wherever the token renders and in config exports). For shared editorial constants, it is a clean solution; keep it to non-sensitive values.

---

- Define a custom token.
- Reuse a support phone number.
- Store a company name as a token.
- Create a single source of truth.
- Avoid hard-coding constants.
- Use a token for a campaign tag.
- Change a value in one place.
- Define a legal-entity token.
- Reuse values across content.
- Store token values in config.
- Export tokens with config.
- Restrict token administration.
- Keep secrets out of tokens.
- Provide editorial constants.
- Resolve a config token in text.
- Use in other modules' settings.
- Standardise repeated values.
- Reference a token in patterns.
- Update a constant globally.
- Manage shared values.