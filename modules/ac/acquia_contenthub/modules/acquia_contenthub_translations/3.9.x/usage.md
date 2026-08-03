The translations submodule (experimental) gives subscriber sites control over which languages of a syndicated entity are imported, so a delivery site can keep only the languages it actually serves.

---

Without it, Content Hub imports every translation of an entity. This submodule tracks entity
translations locally (via `hook_entity_*` implementations and a translation facilitator/tracker
service set) and, on import, prunes undesired languages from the incoming CDF so only the
languages a site wants are created or updated. It adds a settings form at
`/admin/config/services/acquia-contenthub/translations`
(`ContentHubTranslationsSettingsForm`, Content Hub UI access) to configure the selective-import
behavior, plus event subscribers for parsing CDF, tampering/normalizing field values, and
handling webhooks that carry translatable assets. It also classifies entities through a set of
"non-translatable entity handlers" (context, removable, language-flexible, undefined) so
mixed translatable/non-translatable graphs import correctly. It requires `acquia_contenthub`
and `acquia_contenthub_subscriber` and is marked experimental.

---

- Import only the languages a subscriber site actually serves.
- Drop unwanted translations from incoming syndicated content.
- Keep a delivery site lean by excluding irrelevant languages.
- Configure selective language import from the translations settings form.
- Track entity translations locally for correct pruning decisions.
- Prevent creation of translations a site did not request.
- Normalize field values across languages during import.
- Handle webhooks carrying translatable assets selectively.
- Support region-specific sites that need a subset of a global content pool.
- Delete undesired translations that arrive via CDF.
- Classify non-translatable entities so mixed graphs import cleanly.
- Reduce storage and cache overhead from unused translations.
- Combine with the subscriber import queue for language-aware syndication.
- Maintain per-site language policies in a multi-site fleet.
- Keep translation syndication under editorial/governance control.
- Avoid importing languages that have no configured language on the site.
