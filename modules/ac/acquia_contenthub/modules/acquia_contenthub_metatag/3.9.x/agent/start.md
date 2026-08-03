# acquia_contenthub_metatag — agent start

Makes **Metatag** fields syndication-aware. Requires `acquia_contenthub` + `metatag`. No admin
form, permissions, or Drush.

- Provides `acquia_contenthub.metatags.serializer` to serialize metatag fields into CDF.
- Transforms the canonical URL `[node:url]` token on syndication so a subscribed entity's
  canonical points to the **publishing** site (SEO / duplicate-content avoidance).
- Alters the Metatag defaults form and metatag field widgets to describe this behavior.

## Configure (config only)
Config object `acquia_contenthub_metatag.settings`, key
`ach_metatag_node_url_do_not_transform`:
```
drush cset acquia_contenthub_metatag.settings ach_metatag_node_url_do_not_transform 1
```
Set to `1` to opt OUT of the canonical transformation (or set it in `settings.php`). Default
(unset/`0`) = transform enabled.

No separate solution docs — the only lever is this one config key.
