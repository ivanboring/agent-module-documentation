<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Username Validation applies configurable rules to usernames at registration and on profile edit — length, allowed characters, forbidden patterns.

---

Drupal's own username rules are permissive by design: almost anything that is not empty and not a duplicate is accepted, including a lot of whitespace and Unicode that looks fine and behaves badly. That permissiveness produces three separate problems. Usernames that are **visually confusable** — Cyrillic characters that render identically to Latin ones, zero-width joiners, right-to-left marks — allow one account to impersonate another in any list where the name is the identifier. Usernames that are **operationally awkward** break shell scripts, CSV exports and URL patterns that were written assuming something simpler. And **spam registrations** frequently follow recognisable shapes that a pattern rule catches cheaply. This module supplies the rule set, version **8.x-1.4** on `^9 || ^10 || ^11`, with no dependencies. Two things to get right. **Restrictive rules exclude real people**: names outside the Latin alphabet are legitimate and common, and an ASCII-only rule on a public site is a decision about who may register, so restrict by *confusability and control characters* rather than by alphabet wherever the audience is international. And **rules apply going forward**, so existing accounts that violate a newly added rule are not migrated — decide whether they are grandfathered or forced to change at next login, and check that the validation runs on profile edit as well as registration, or a name can be changed to something the rules forbid afterwards.

---

- Set a minimum username length.
- Forbid spaces in usernames.
- Block confusable Unicode characters.
- Reduce spam registrations.
- Enforce a username convention.
- Prevent impersonation by lookalike names.
- Restrict usernames to safe characters.
- Block reserved words in usernames.
- Keep usernames script-friendly.
- Enforce a maximum length.
- Prevent misleading admin-like names.
- Support a community's naming policy.
- Improve CSV export reliability.
- Block a known spam pattern.
- Require alphanumeric usernames.
- Keep usernames URL-safe.
- Enforce naming rules on profile edit.
- Reduce moderation workload.
