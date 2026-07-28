# Enable scheduling per entity type / bundle

Scheduling is opt-in per bundle. Settings are stored as **third-party settings** under the
`scheduler` namespace on the bundle config entity (schema type
`scheduler_third_party_settings`). Enable via the bundle edit form's **Scheduler** vertical tab,
e.g. Structure → Content types → *Article* → edit.

## Where the settings live (config schema)
- `node.type.*.third_party.scheduler`
- `media.type.*.third_party.scheduler`
- `taxonomy.vocabulary.*.third_party.scheduler`
- `commerce_product.commerce_product_type.*.third_party.scheduler`
- `scheduler.no_bundle_entity_type_settings.*` — for entity types that have no bundles.

## Per-bundle keys (`scheduler_third_party_settings`)
- `publish_enable` / `unpublish_enable` — turn each field on for this bundle.
- `publish_required` / `unpublish_required` — make the date mandatory.
- `publish_past_date` — `error`, `publish` (publish immediately) or `schedule`.
- `publish_past_date_created`, `publish_touch` — align created/changed time with publish time.
- `publish_revision` / `unpublish_revision` — create a new revision on the action.
- `show_message_after_update` — confirmation message toggle.
- `expand_fieldset` (`when_required` | `always`), `fields_display_mode`
  (`vertical_tab` | `fieldset`) — how the date fields appear on the edit form.

## Read in code
```php
$manager = \Drupal::service('scheduler.manager');
// Third-party setting for a specific entity's bundle:
$enabled = $manager->getThirdPartySetting($node, 'publish_enable', FALSE);
// For a no-bundle entity type:
$value = $manager->getNoBundleEntityTypeSetting('my_type', 'publish_enable', FALSE);
```

Enabling a bundle causes Scheduler to add the `publish_on` / `unpublish_on` base fields to that
entity type (see `drush scheduler:entity-update` in [../drush/drush.md](../drush/drush.md)).
