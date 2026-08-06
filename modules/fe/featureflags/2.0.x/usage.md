<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Feature flags provides a `feature_flag` configuration entity plus the three pieces of plumbing that make flags usable in Drupal: a manager service to check them, a cache context so flagged output caches correctly, and a condition plugin so they can gate blocks.

---

A flag is a named switch you can flip without a deployment, which is how teams ship unfinished work behind a toggle, run a staged rollout, or kill a misbehaving feature quickly. Doing it properly in Drupal needs more than a boolean in settings: code has to query it, the render cache has to vary on it, and site builders should be able to use it without writing PHP. This module supplies all three — `FlagManager` for the check, `FeatureFlagContext` as a cache context, and `Plugin/Condition/FeatureFlagStatus` for block visibility and anywhere else conditions are collected.

Because flags are configuration entities, they move through the normal config workflow: created in one environment, exported, deployed, and switched per environment with a config override if you want production and staging to differ. That is the main reason to prefer this over a `state` value — it is reviewable and diffable.

The permission is `administer featureflag entities`. It is not marked `restrict access`, which is reasonable for a flag list but worth thinking about: whoever holds it can enable any feature that has been hidden behind a flag, including one hidden because it is not ready or not safe. Treat the flag list as part of the site's control surface, not as content.

The cache context is the piece most often forgotten. If flagged output is rendered without declaring the context, the first request's variant is cached and served to everyone regardless of the flag — the bug looks like "the flag does nothing".

---

- Ship an unfinished feature behind a switch.
- Enable a feature for one environment only via config override.
- Kill a misbehaving feature without a deployment.
- Gate a block on a feature flag.
- Check a flag from custom code through the flag manager.
- Vary render caching correctly on a flag's state.
- Stage a rollout by flipping flags in sequence.
- Keep toggles in exported configuration rather than settings.php.
- Review a toggle change in a config diff.
- Coordinate a front-end and back-end change behind one flag.
- Turn a seasonal feature on and off on schedule.
- Give a release manager control of feature switches.
- Retire a flag once a feature is permanent.
- List which flags a site currently defines.
- Diagnose a flag that appears to have no effect (missing cache context).
- Replace ad-hoc `settings.php` booleans with reviewable config.