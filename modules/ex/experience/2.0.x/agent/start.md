<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Experience (experience) — agent index

**Defines an 'experience' field type (years + months) with widget, formatters and a Views filter.**

- **Version:** 2.0.x (2.0.2) · **Package:** Field types
- **Core:** ^8 || ^9 || ^10 || ^11 · **Requires:** core `field`
- **Field type:** `experience` (`ExperienceItem`, list class `ExperienceFieldItemList`).
- **Widget:** `ExperienceDefaultWidget` (year/month selects; configurable year range; "Fresher" option; label position above/within).
- **Formatters:** `ExperienceDefaultFormatter`, `ExperienceMonthFormatter`.
- **Views:** `ExperienceFilter` filter plugin (via `experience.views.inc`).
- **Library:** `experience/drupal.experience` (JS).
- **No routes, permissions, services or settings pages.**

**Security:** Pure Field API provider; no web-facing routes, no permissions, no mutating endpoints. Data entry follows standard field/entity access. No security-relevant surface.