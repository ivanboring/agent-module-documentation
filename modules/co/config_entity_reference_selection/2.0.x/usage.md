<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Config entity reference selection provides an entity reference selection plugin that restricts which configuration entities a field may point at.

---

Entity reference fields aiming at content entities have a rich selection story — views-based selection, bundle filters, per-bundle sort. Fields aiming at **configuration** entities do not: a field referencing image styles, text formats, view modes, workflows or roles typically offers every one that exists, and every one that any module adds later. That produces long, unfocused lists and an editor choosing something the site never intended to offer. This plugin closes the gap by letting the field's settings name the allowed set, so a "layout style" field lists three image styles rather than forty, and a new style added by a contrib module does not silently appear as an option. Version **2.0.3**, no dependencies, core requirement **`^10.1 || ^11 || ^12`** — reaching into a major that does not exist yet. It is developer-facing infrastructure with no UI of its own beyond the field settings, and the reason to reach for it is usually a site-builder pattern rather than a content one: configuration references are how a content type offers a controlled set of presentation choices without hard-coding them. One useful property to note: because the allowed list is field configuration, it exports and deploys with everything else, so the constraint travels between environments rather than living in a developer's head.

---

- Limit an image style reference to three options.
- Restrict a view mode field's choices.
- Offer a controlled set of presentation options.
- Prevent new options appearing automatically.
- Reference selected text formats only.
- Limit a role reference field.
- Keep a select list short.
- Constrain a workflow reference.
- Offer curated layout choices.
- Avoid overwhelming an editor with options.
- Keep a constraint in exported configuration.
- Reference a subset of config entities.
- Limit a menu reference field.
- Offer three card styles.
- Restrict a language reference.
- Keep options stable as modules are added.
- Build a controlled presentation field.
- Reference only approved configurations.
