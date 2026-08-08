<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Default Content Deploy exports and imports content between Drupal environments — a way to move nodes, taxonomy, media and their references from, say, a staging site into production, and keep doing it continuously rather than as a one-off.

---

Configuration management moves config between environments, but content is deliberately excluded — and yet some content is really configuration: the front-page nodes, the standard taxonomy, the demo or seed content a site ships with. Moving that by hand, or by database copy, is crude and loses the ability to review changes. Default Content Deploy treats content as something you export to files and import elsewhere, with references preserved via UUIDs, so a defined set of content can be deployed like code.

It defines `default content deploy export` and `default content deploy import` permissions, and this is where care is needed: **content import writes entities into the target site**, so who may run an import — and what content an import can carry — is a security-relevant decision. An import is a way to create or overwrite content programmatically; on production, that capability belongs to a trusted deployment process, not a broadly granted permission. A `search_api_default_content_deploy` submodule handles Search API index config.

For teams that need to ship and sync content across environments, it is the Drupal-native tool. Set the import permission narrowly, and review what a deployment includes before running it against production.

---

- Export content to files.
- Import content into another environment.
- Deploy seed content like code.
- Sync content from staging to production.
- Preserve references across environments.
- Ship default content with a site.
- Move taxonomy between sites.
- Deploy front-page content.
- Keep content in version control.
- Continuously sync content.
- Restrict who may import content.
- Restrict who may export content.
- Review a content deployment first.
- Treat import as a deployment step.
- Deploy demo content.
- Preserve UUID references.
- Handle Search API index config.
- Avoid database copies for content.
- Move media across environments.
- Seed a fresh environment.
- Control the content-import capability.
- Stage content changes.