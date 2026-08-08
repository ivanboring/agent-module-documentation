<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Acquia CMS — Page provides a ready-made **Page content type** with its fields, form and view displays, and related configuration already built — one component of the Acquia CMS content model.

---

Acquia CMS is Acquia's Drupal distribution, and it is assembled from small single-purpose modules like this one. Rather than a site builder creating an unstructured landing page type from scratch — the fields, the widgets, the view modes, the pathauto pattern, the metatag defaults — this module ships that configuration as a unit, so the Page type exists and is editor-ready the moment it is enabled.

The value and the limitation are the same fact: it is **distribution configuration, not a generic feature**. It encodes Acquia's opinions about what a Page should be, and it is designed to sit alongside the rest of the Acquia CMS family and share their common layer (`acquia_cms_common`). On an Acquia CMS site it is exactly right. On an unrelated site it is a strong set of assumptions to take on — usable as a starting point, but you inherit the whole model, and it expects its siblings to be present.

Because it is configuration, what it does is fixed by that config: it creates the Page content type and wires its displays. Extending it means adding fields and adjusting displays as you would any type. It travels with a config export like any other content-type configuration.

---
- Add a Page content type to a site.
- Author an unstructured landing page.
- Get a pre-built Page content type with fields configured.
- Reuse Acquia CMS's Page model.
- Standardise Page content across a site.
- Get view displays for Page out of the box.
- Get form display for Page configured.
- Skip building the Page content type by hand.
- Adopt Acquia CMS's Page configuration.
- Provide editors a ready Page form.
- Base a custom Page type on this one.
- Get pathauto and metatag defaults for Page.
- Enable Page as part of Acquia CMS.
- Match the Acquia CMS content model.
- Export the Page config with the site.
- Extend the Page content type with extra fields.
- Use Page with the rest of the Acquia CMS family.
- Provide a consistent Page editing experience.