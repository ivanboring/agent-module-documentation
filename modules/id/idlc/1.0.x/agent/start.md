# IDLC (Ignore Disabled Languages Config) — agent index

One `config_filter` plugin that keeps `drush cex`/`cim` from exporting, importing or
deleting the `language.<langcode>` config **collections** of languages that are not
installed on the current site. Built for shared-codebase / multisite setups with one
config sync directory but different enabled languages per site.

Setup is just enabling the module (pulls in `config_filter`). No config UI
(`configure` null), no permissions, no Drush commands, no config schema.

Key facts:
- Plugin: `Drupal\idlc\Plugin\ConfigFilter\DisabledLanguagesConfigIgnore`
  (`@ConfigFilter id = "disabled_languages_config_ignore"`, weight `101`).
- It implements `filterListAll`, `filterDelete`, `filterDeleteAll` from
  `config_filter`'s `ConfigFilterBase`. Each checks
  `getSourceStorage()->getCollectionName()`:
  - empty collection name (the default collection) → pass through unchanged.
  - name equals `language.<langcode>` for a **currently installed** language
    (from `language_manager`) → pass through.
  - any other `language.<langcode>` (an uninstalled language) → return `[]` / `FALSE`,
    hiding that collection from list/export and blocking its deletion on import.
- Only affects data crossing the config transformation pipeline (export/import); it
  never changes active runtime config.
- Depends on `config_filter` ^2.0; behaviour is undefined without it enabled.
- No solution sub-docs: the module is one plugin with no API surface to call.
