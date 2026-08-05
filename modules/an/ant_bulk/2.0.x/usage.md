<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Auto Node Translate Bulk runs Auto Node Translate over many nodes at once — the bulk companion to a module that otherwise translates one node at a time.

---

Auto Node Translate hands a node's fields to a machine-translation provider and writes back the translations. That is exactly what is needed for new content and useless for the thousand existing nodes a site has when it goes multilingual. This module supplies the missing bulk path: a form at `/ant-bulk/translate`, a `TranslationManager` service coordinating the work, a Drush command namespace for running it outside a browser, and `ant_bulk.api.php` documenting the extension points. Its own permission, `use bulk auto translate`, is marked **`restrict access: true`**, which is correct for reasons that are as much financial as they are editorial: bulk translation sends every selected node's content to a translation provider, and providers charge per character, so the permission is effectively "may spend the translation budget". The settings form at `/admin/config/regional/ant-bulk-settings` is separately gated by `administer site configuration`. Composer requires `auto_node_translate ^3.0` and core `^10.2 || ^11`; the release is 2.0.0-rc4, a release candidate. As with any machine translation, output needs review before publication — and content sent for translation leaves the site, which matters for unpublished or confidential material.

---

- Translate a backlog of nodes in one operation.
- Add a new language to an existing multilingual site.
- Run bulk translation from Drush.
- Translate one content type at a time.
- Seed translations for human post-editing.
- Reduce manual translation effort on launch.
- Restrict who may spend the translation budget.
- Queue translations rather than blocking a request.
- Translate content migrated from another system.
- Fill gaps where translations are missing.
- Provide draft translations for review.
- Support a site expanding into a new market.
- Re-translate after a source content change.
- Extend the process via the module's API hooks.
- Schedule bulk translation outside peak hours.
- Estimate translation cost before committing.
- Translate a campaign's content set together.
- Keep the same provider configuration as single-node translation.
