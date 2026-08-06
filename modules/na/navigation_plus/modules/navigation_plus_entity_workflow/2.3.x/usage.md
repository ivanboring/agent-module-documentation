<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Navigation + Entity Workflow is **deprecated**. Its functionality has been moved into the main Navigation + module and the submodule is slated for deletion.

---

The info file states it plainly: *"Deprecated. This functionality has been moved into the main module so Navigation + Entity Workflow will be deleted soon."* There is nothing to configure and nothing to adopt.

If it is enabled on an inherited site, that indicates the site predates the consolidation rather than that the submodule is doing anything the parent cannot. Uninstall it and rely on `navigation_plus` itself. Do not add it to a new site or carry it in a composer file.

---

- Recognise a deprecated submodule on an inherited site.
- Uninstall it and rely on Navigation + itself.
- Remove it from a composer file.
- Confirm the functionality now lives in the parent module.
- Avoid installing it on a new site.
- Audit a site still carrying it.
- Plan a Navigation + upgrade that clears it.
