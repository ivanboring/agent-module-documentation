<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Open Y Entity Reference Tweaks (openy_er) — agent index

Entity reference **selection plugins that suppress the config dependency** on referenced entities.
Version **1.1.1**. Core `^10 || ^11`. Declares `field` and `plugin`.

Plugins: `Plugin/EntityReferenceSelection/DefaultSelectionNoDependency`,
`NodeSelectionNoDependency`, `BlockSelectionNoDependency`, sharing `SelectionNoDependencyTrait`.

**The problem it solves:** a field default that references a node/block makes that entity a config
dependency. Config then fails to import where the entity does not exist, and deleting the entity
silently removes the field config. Fatal for a distribution shipping field config to unknown
sites.

**Cannot be installed as shipped — verified.** `info.yml` declares **`drupal:plugin`**, but
`plugin` is not a core module; it is the contrib project `drupal/plugin`. `drush en openy_er`
fails with *"missing its dependency module plugin"*, and the module ships **no `composer.json`**,
so composer never pulls it. Fix locally with `composer require drupal/plugin`; upstream it needs
the namespace corrected and a composer requirement added.