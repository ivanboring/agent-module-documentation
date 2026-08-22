# Configuration

Classes Extractor stores its settings in the `classes_extractor.settings`
configuration object, edited through the module's settings form in the admin UI.
This is where you tell the extractor what to scan and control how the export
behaves before you run `drush cec`.

## Open the settings form

1. Log in as an administrator.
2. Open the module's settings form from its entry on the **Extend** page (use the
   *Configure* link), or from the site's configuration area. The form saves to the
   `classes_extractor.settings` config object.

## What you configure

The extractor is built around a **plugin system**, so the exact options depend on
which extractor plugins are active. In general the settings form lets you:

- **Choose the modules to scan** — the extraction gathers the backend CSS classes
  used by one or more specified modules. Pick the modules whose classes you want in
  the exported list.
- **Control the export** — where and how the list of collected classes is written
  out for your build tooling to consume.

## Extending the extractor

If the default extraction doesn't cover a source of classes you care about, you can
write your own extractor plugin: define a plugin class that implements the module's
class-extractor interface and register it with the plugin manager. It then becomes
available to the extraction process alongside the built-in extractors — no core
module changes required.

## Running the extraction

Configuration only prepares the extractor; the work happens on the command line.
After saving your settings, run:

```bash
drush cec
```

to produce the file of extracted classes, or fetch the current list as JSON from
`GET /api/extracted-classes`.
