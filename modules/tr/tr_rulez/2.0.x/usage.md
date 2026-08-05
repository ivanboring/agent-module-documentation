<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Rules Essentials fills gaps in the Rules module for Drupal 8+: cloning rules and components, a scheduler for deferred actions, worked examples, and better in-place documentation.

---

Rules was the automation engine of Drupal 7 and its port has been a long story: the Drupal 8+ version arrived incomplete, with several features from the D7 module — the scheduler most conspicuously — never finished. This module supplies them from the outside rather than waiting. Cloning is the small thing that matters daily: a site with twenty near-identical rules is built by copying one and changing a condition, and without a clone route each is built from scratch. `rules_scheduler` restores deferred execution, so an action can happen later rather than immediately. `rules_examples` ships working models, which is the fastest route into any rules engine. There is also an "unimplemented feature" route that names what is missing and links the issue — an unusually honest touch. Version **2.0.0** (2024) on `^10.3 || ^11`, depending on `rules`. The clone routes are correctly built: `_permission: 'administer rules+administer rules reactions'` requires **both** permissions, and `_csrf_token: 'TRUE'` protects a state-changing GET route from being triggered by a link elsewhere — worth noting because a clone endpoint without CSRF protection is a standard oversight. The strategic point: **ECA is now the actively developed automation framework** in this space. For an existing D7 site being migrated with Rules already in place, this makes that path viable; for new automation work, evaluate ECA first.

---

- Clone an existing rule.
- Duplicate a rules component.
- Schedule a rules action for later.
- Learn Rules from working examples.
- Build twenty similar rules quickly.
- Defer an action to a future time.
- Migrate a Drupal 7 Rules site.
- See which Rules features are missing.
- Add scheduling to an automation.
- Reduce repetitive rule building.
- Document rules for a team.
- Send a delayed notification.
- Copy a rule between environments.
- Test an automation from an example.
- Extend an existing Rules installation.
- Keep a D7 automation model working.
- Schedule a content change.
- Explore Rules' capabilities.
