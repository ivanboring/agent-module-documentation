<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Classes Extractor provides a method to dynamically export used classes in the backend, collecting classes via a plugin system.

---

Classes Extractor collects the CSS classes actually used across the site — via a pluggable extraction
system — and exports them, useful for tooling like Tailwind/PurgeCSS safelisting or generating a used-class
manifest. It provides Drush commands and is configured at `classes_extractor.settings`.

Use it as a developer/build tool to enumerate used classes. It is a developer utility that gathers class
names; it doesn't render anything itself and has no content or access role. Configure the extractor plugins
and export.

---

- Collect used CSS classes.
- Export a used-class manifest.
- Support Tailwind/PurgeCSS safelisting.
- Use a pluggable extraction system.
- Provide Drush commands.
- Configure at classes_extractor.settings.
- Enumerate classes for tooling.
- Have no content/access role.
- Configure the extractor plugins.
- Handle class extraction.
- Export classes.
- Configure extraction.
- Gather class names.
- Handle the extractor.
- Extract used classes.
- Configure the export.
- Handle classes.
- Export class lists.
- Configure plugins.
- Collect classes.
