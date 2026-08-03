The metatag submodule makes Metatag fields syndication-aware: it transforms the canonical URL token so a syndicated entity's canonical points to the publishing site, and lets you opt out of that behavior.

---

When both Metatag and Content Hub are active, this submodule provides a custom serializer for
metatag fields (`acquia_contenthub.metatags.serializer`) and alters the Metatag defaults form
and metatag field widgets to explain the behavior: Content Hub automatically transforms the
`[node:url]` token in the canonical URL so that, when an entity is syndicated to a subscriber,
its canonical URL resolves to the **publishing** site's node URL (good for SEO / avoiding
duplicate-content penalties across a syndication fleet). Site owners who do not want this can
opt out by setting `ach_metatag_node_url_do_not_transform` to `1` in
`acquia_contenthub_metatag.settings` (via `drush cset` or `settings.php`). It has no admin
form, permissions, or Drush of its own and depends on `acquia_contenthub` + `metatag`.

---

- Keep a syndicated entity's canonical URL pointing at the publishing site for SEO.
- Avoid duplicate-content penalties when the same content appears on many sites.
- Automatically transform the `[node:url]` canonical token during syndication.
- Opt out of canonical transformation with `ach_metatag_node_url_do_not_transform=1`.
- Set the opt-out per site in `settings.php` for environment-specific behavior.
- Explain the canonical behavior to editors directly on the Metatag defaults form.
- Show the same guidance on individual metatag field widgets.
- Serialize metatag field values correctly into CDF for syndication.
- Preserve SEO metadata across publisher and subscriber sites.
- Let subscriber sites keep their own canonical when opting out.
- Support multi-site SEO strategies for shared content.
- Configure the behavior entirely via config (no UI needed).
- Ensure canonical URLs survive the export/import round trip.
- Combine with publisher/subscriber to control cross-site SEO signals.
- Centralize canonical handling instead of per-site template overrides.
