<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Acquia CMS — Event provides a ready-made **Event content type** with its fields, form and view displays, and related configuration already built — one component of the Acquia CMS content model.

---

Acquia CMS is Acquia's Drupal distribution, and it is assembled from small single-purpose modules like this one. Rather than a site builder creating an event with dates and location type from scratch — the fields, the widgets, the view modes, the pathauto pattern, the metatag defaults — this module ships that configuration as a unit, so the Event type exists and is editor-ready the moment it is enabled.

The value and the limitation are the same fact: it is **distribution configuration, not a generic feature**. It encodes Acquia's opinions about what a Event should be, and it is designed to sit alongside the rest of the Acquia CMS family and share their common layer (`acquia_cms_common`). On an Acquia CMS site it is exactly right. On an unrelated site it is a strong set of assumptions to take on — usable as a starting point, but you inherit the whole model, and it expects its siblings to be present.

Because it is configuration, what it does is fixed by that config: it creates the Event content type and wires its displays. Extending it means adding fields and adjusting displays as you would any type. It travels with a config export like any other content-type configuration.

---
- Add an Event content type to a site.
- Author an event with dates and location.
- Get a pre-built Event content type with fields configured.
- Reuse Acquia CMS's Event model.
- Standardise Event content across a site.
- Get view displays for Event out of the box.
- Get form display for Event configured.
- Skip building the Event content type by hand.
- Adopt Acquia CMS's Event configuration.
- Provide editors a ready Event form.
- Base a custom Event type on this one.
- Get pathauto and metatag defaults for Event.
- Enable Event as part of Acquia CMS.
- Match the Acquia CMS content model.
- Export the Event config with the site.
- Extend the Event content type with extra fields.
- Use Event with the rest of the Acquia CMS family.
- Provide a consistent Event editing experience.