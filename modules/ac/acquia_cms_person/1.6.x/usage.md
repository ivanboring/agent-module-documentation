<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Acquia CMS — Person provides a ready-made **Person content type** with its fields, form and view displays, and related configuration already built — one component of the Acquia CMS content model.

---

Acquia CMS is Acquia's Drupal distribution, and it is assembled from small single-purpose modules like this one. Rather than a site builder creating a structured person/staff profile type from scratch — the fields, the widgets, the view modes, the pathauto pattern, the metatag defaults — this module ships that configuration as a unit, so the Person type exists and is editor-ready the moment it is enabled.

The value and the limitation are the same fact: it is **distribution configuration, not a generic feature**. It encodes Acquia's opinions about what a Person should be, and it is designed to sit alongside the rest of the Acquia CMS family and share their common layer (`acquia_cms_common`). On an Acquia CMS site it is exactly right. On an unrelated site it is a strong set of assumptions to take on — usable as a starting point, but you inherit the whole model, and it expects its siblings to be present.

Because it is configuration, what it does is fixed by that config: it creates the Person content type and wires its displays. Extending it means adding fields and adjusting displays as you would any type. It travels with a config export like any other content-type configuration.

---
- Add a Person content type to a site.
- Author a structured person/staff profile.
- Get a pre-built Person content type with fields configured.
- Reuse Acquia CMS's Person model.
- Standardise Person content across a site.
- Get view displays for Person out of the box.
- Get form display for Person configured.
- Skip building the Person content type by hand.
- Adopt Acquia CMS's Person configuration.
- Provide editors a ready Person form.
- Base a custom Person type on this one.
- Get pathauto and metatag defaults for Person.
- Enable Person as part of Acquia CMS.
- Match the Acquia CMS content model.
- Export the Person config with the site.
- Extend the Person content type with extra fields.
- Use Person with the rest of the Acquia CMS family.
- Provide a consistent Person editing experience.