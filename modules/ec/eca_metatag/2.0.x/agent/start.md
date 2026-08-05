<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# ECA Metatag (eca_metatag) — agent index

Two ECA **actions** for manipulating Metatag values inside a model. Requires
`eca (^2 || ^3)` and `metatag`. No config UI, no permissions, no schema, no Drush — everything is
configured inside ECA models.

Key facts:
- Actions (both declared with `#[Action(...)]` **and** `#[EcaAction(...)]`, so they carry ECA's
  extra metadata in the model editor):

  | Plugin id | Class | Purpose |
  |---|---|---|
  | `eca_metatag_add_tag` | `Plugin\Action\AddTag` | Add a meta tag to the current context |
  | `eca_metatag_set_tag_value` | `Plugin\Action\SetTagValue` | Set the value of an existing meta tag |

- `src/EcaEvents.php` + `eca_metatag.services.yml` provide the module's event plumbing;
  `eca_metatag.install` handles install-time setup.
- Action configuration accepts **ECA tokens**, so values can reference the event's entity or
  earlier actions in the model.

Using it:

1. `drush en eca eca_metatag -y` (plus an ECA modeller such as `eca_modeller_bpmn`).
2. In a model, add an event (e.g. entity presave / entity view), then add
   *Metatag: add tag* or *Metatag: set tag value*.
3. Reference tokens in the value field.

Notes:
- The actions operate on the **metatag context of the current request/entity**, so they belong in
  models triggered where meta tags are being assembled; using them in an unrelated event has no
  visible effect.
- Tag names are Metatag plugin ids (`description`, `og:title`, `robots`, …) — check
  `drush php:eval 'print implode("\n", array_keys(\Drupal::service("plugin.manager.metatag.tag")->getDefinitions()));'`.
