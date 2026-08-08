<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Entity Usage Addons turns the Entity Usage module's tracking data into two field formatters, so "where is this used?" becomes something you place on a display rather than a report you navigate to.

---

Entity Usage already records which entities reference which. What it does not do is put that answer in front of an editor at the moment they need it — which is while they are looking at the entity, wondering whether deleting it will break three pages.

This module adds two formatters. One renders the list of referencing entities as links; the other renders just the count. Both read `entity_usage`'s tables through a small `Usage` service, so there is no second source of truth and no extra tracking to keep in sync.

The scope is genuinely small: three PHP classes, no routes, no permissions, no configuration page. That is a feature. It also means the module inherits every limitation of Entity Usage — if the parent module has not tracked a relationship (an unsupported field type, a reference built in a way its plugins do not see), this formatter shows nothing, and shows it without complaint. An empty usage list is not proof that an entity is unused.

Its README is the single word `# todo`, so the source is the documentation. There is not much of it, which makes that workable.

---

- Show an editor where an entity is referenced.
- Render a usage count as a field.
- Render a usage list as links.
- Warn before deleting a referenced entity.
- Put usage data on a node display.
- Put usage data on a media display.
- Avoid navigating to a separate usage report.
- Reuse Entity Usage's existing tracking.
- Add usage to a view mode.
- Check impact before unpublishing.
- Surface backlinks to content editors.
- Audit which media are actually in use.
- Find orphaned referenced entities.
- Understand that empty means "not tracked", not "unused".
- Configure tracking in Entity Usage, not here.
- Keep the display read-only.