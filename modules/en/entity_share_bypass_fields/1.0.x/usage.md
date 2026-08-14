<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Entity Share Bypass Fields adds an Entity Share Client import processor that removes ("bypasses") missing or explicitly listed fields from incoming synchronized entity data so imports don't fail on unknown fields.
---
When a site pulls content with Entity Share Client, the remote JSON:API payload may contain fields that the local entity does not have (schema drift between sites), which can break the import. This module's `BypassFieldsProcessor` runs at the `prepare_entity_data` stage and, for each incoming entity, loads the local entity by UUID and then unsets from the payload any attribute the operator has listed in a comma-separated "Bypass fields manually" setting, plus any `field_*` attribute that does not exist as a field on the local entity. The trimmed payload is what Entity Share then imports.

Despite the name, this is a client-side data-trimming step on the pulling site, not a field-access-control bypass: it only *removes* attributes from data the client already fetched, so it cannot expose restricted field values to anyone. It does not disable field read/write access checks and it does not change what the remote channel serves — the remote server still governs what it exposes. The processor is enabled and configured per import config at `/admin/config/services/entity_share/import_config` (an Entity Share admin screen), so who can turn it on is governed by Entity Share Client's own permissions. Failures are logged rather than fatal.

Typical setup: enable the module, edit an Entity Share import config, enable the "Bypass fields" processor, and optionally list specific field machine names to always drop during sync.
---
- Prevent Entity Share imports from failing when the remote sends unknown fields.
- Automatically drop `field_*` attributes that don't exist locally during sync.
- Manually list specific field machine names to skip on import.
- Reconcile schema drift between a source and destination Drupal site.
- Import a subset of an entity's fields while ignoring the rest.
- Keep local-only fields from being overwritten by dropping their incoming values.
- Enable the processor per Entity Share import config.
- Configure bypassed fields in the processor's settings textarea (comma-separated).
- Run at the `prepare_entity_data` stage (weight -100) before other processors.
- Load the local entity by UUID to decide which fields exist.
- Log (not fail) when the entity is missing or not fieldable.
- Migrate content between sites with divergent content models.
- Avoid manual field creation on the destination just to satisfy an import.
- Combine with other Entity Share Client processors in a pipeline.
- Reduce import errors in staged content-staging workflows.
