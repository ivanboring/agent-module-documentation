<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Config Track (config_track) — agent index

Records **config entity and simple configuration changes as revisions**.
Version **1.0.0-alpha4** (**alpha**). Core `^10 || ^11`. No dependencies.

Value is highest where config management is weakest — several administrators, no export discipline,
changes made in the UI. **A record, not a deployment mechanism.**

**Two things to plan:** the revision store keeps whatever configuration holds, including API keys,
mail settings and access rules — so read access to the history is effectively read access to every
config value the site has ever held; and revisions **grow**, so check pruning and storage after a
year.