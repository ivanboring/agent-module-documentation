<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
CKEditor 5 Dev tools switches on the official CKEditor 5 Inspector inside Drupal, adds a report of the plugins actually loaded, and ships a starter template for writing your own.

---

Debugging a CKEditor 5 problem without the Inspector is guesswork. The editor's model is not the DOM, and questions like "why did my element get stripped", "what schema does this widget register", "which plugin is swallowing this keystroke" are answerable in seconds with the Inspector and not at all without it. Enabling it normally means a local build of the editor; this module makes it a Drupal setting.

The plugin report at `/admin/reports/ckeditor5-plugins` answers the other recurring question: what is actually loaded for this text format? Drupal assembles the CKEditor build from module-provided plugin definitions, and the gap between "I enabled the module" and "the plugin is in the build" is where most integration time goes.

`ckeditor5_plugin_starter_template` is a scaffold for a new plugin — the file layout, the `*.ckeditor5.yml` definition and the JavaScript entry point, which is the part that is tedious to get right from documentation alone.

**This is a development tool.** The Inspector is a debugging overlay, and the report exposes the site's editor configuration; the permission `access ckeditor5 plugin report` gates the report, but the module as a whole belongs in a development environment. Leaving it enabled in production is the kind of thing `vitals_extra`'s dev-modules check exists to catch.

---

- Debug a CKEditor 5 problem with the official Inspector.
- See the editor's model rather than guessing from the DOM.
- Find out why an element is being stripped.
- Inspect a widget's registered schema.
- Discover which plugin handles a keystroke.
- List the plugins actually loaded for a text format.
- Diagnose a plugin that is enabled but not in the build.
- Scaffold a new CKEditor 5 plugin.
- Learn the plugin file layout from a working template.
- Compare plugin sets between text formats.
- Investigate a conflict between two editor plugins.
- Verify a plugin's Drupal-side definition.
- Support a team building custom editor plugins.
- Keep the module out of production environments.
- Audit a site for development modules left enabled.