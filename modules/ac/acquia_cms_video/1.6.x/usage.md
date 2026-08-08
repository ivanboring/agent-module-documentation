<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Acquia CMS — Video provides a ready-made **Video media type** with its fields, form and view displays, and related configuration already built — one component of the Acquia CMS content model.

---

Acquia CMS is Acquia's Drupal distribution, and it is assembled from small single-purpose modules like this one. Rather than a site builder creating a video asset type from scratch — the fields, the widgets, the view modes, the pathauto pattern, the metatag defaults — this module ships that configuration as a unit, so the Video type exists and is editor-ready the moment it is enabled.

The value and the limitation are the same fact: it is **distribution configuration, not a generic feature**. It encodes Acquia's opinions about what a Video should be, and it is designed to sit alongside the rest of the Acquia CMS family and share their common layer (`acquia_cms_common`). On an Acquia CMS site it is exactly right. On an unrelated site it is a strong set of assumptions to take on — usable as a starting point, but you inherit the whole model, and it expects its siblings to be present.

Because it is configuration, what it does is fixed by that config: it creates the Video media type and wires its displays. Extending it means adding fields and adjusting displays as you would any type. It travels with a config export like any other content-type configuration.

---
- Add a Video media type to a site.
- Author a video asset.
- Get a pre-built Video media type with fields configured.
- Reuse Acquia CMS's Video model.
- Standardise Video content across a site.
- Get view displays for Video out of the box.
- Get form display for Video configured.
- Skip building the Video media type by hand.
- Adopt Acquia CMS's Video configuration.
- Provide editors a ready Video form.
- Base a custom Video type on this one.
- Get pathauto and metatag defaults for Video.
- Enable Video as part of Acquia CMS.
- Match the Acquia CMS content model.
- Export the Video config with the site.
- Extend the Video media type with extra fields.
- Use Video with the rest of the Acquia CMS family.
- Provide a consistent Video editing experience.