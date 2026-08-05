<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# PatchInfo (patchinfo) — agent index

**OBSOLETE — cannot be installed.** The info.yml declares:
```yaml
lifecycle: obsolete
lifecycle_link: 'https://www.drupal.org/project/patchinfo/issues/3566867'
```
`drush en patchinfo` fails with **"Unable to install modules: module 'patchinfo' is obsolete."**
Drupal enforces the lifecycle state — this is the ecosystem working as designed, stopping new
adoption rather than leaving a dead project looking alive. **Do not plan a site around it.**

Version **8.x-2.0-rc5**. Depended on core `update`. Submodules were `patchinfo_source_composer`,
`patchinfo_source_info`, `patchinfo_drupalorg`.

**What it did:** surfaced applied patches on the update status report, read from composer's patch
list, info.yml annotations, or drupal.org issue references — because the update report shows a
module's version and says nothing about the three patches on top of it, so an update silently
drops them.

**The need has not gone away. The practical answer:** keep the patch list in `composer.json` with
a **comment and an issue URL for every entry** — that is the record that survives — and review it
as part of every update rather than relying on the site to remind you.
