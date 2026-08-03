# acquia_contenthub_translations — agent start

**Experimental.** Lets a subscriber import only selected languages of a syndicated entity
(prunes undesired languages from incoming CDF). Requires `acquia_contenthub` +
`acquia_contenthub_subscriber`. No permissions/Drush.

- Settings form: `/admin/config/services/acquia-contenthub/translations` (route
  `acquia_contenthub_translations.settings`, `ContentHubTranslationsSettingsForm`, Content Hub
  UI access). Config: `acquia_contenthub_translations.settings`.
- Tracks translations via `hook_entity_insert/update/presave/translation_insert/delete`
  through `acquia_contenthub_translations.translation_facilitator` + tracking services.
- Import-time pruning: `acquia_contenthub_translations.parse_cdf.delete_undesired_translations`
  and the undesired-language registrar remove languages the site did not request.
- Classifies entities via non-translatable entity handlers (context / removable /
  language-flexible / undefined) registered in `*.services.yml`.

Single settings form + event-driven behavior; no further solution docs. To extend, subscribe
to the base module's CDF/parse events (see the parent `agent/extend/events.md`).
