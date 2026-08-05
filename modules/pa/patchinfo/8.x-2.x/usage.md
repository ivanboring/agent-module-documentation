<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
PatchInfo showed which patches were applied to which modules on the update status report — and is now marked **obsolete** by its own maintainers and cannot be installed.

---

Every non-trivial Drupal site carries patches: a fix backported from an unreleased branch, a workaround for an incompatibility, a local change to contrib behaviour. They are applied by `cweagans/composer-patches` from a list in `composer.json`, and then they become invisible — the update report shows a module's version and says nothing about the three patches on top of it, so the person who runs the update discovers the loss when something breaks. PatchInfo solved that by reading patch sources — `patchinfo_source_composer` from composer's patch list, `patchinfo_source_info` from info.yml annotations, `patchinfo_drupalorg` for drupal.org issue references — and surfacing them alongside each project on the update page. The module's info.yml now declares **`lifecycle: obsolete`** with a link to the issue explaining it, and Drupal refuses to install a module in that state: `drush en patchinfo` fails with *"module 'patchinfo' is obsolete"*. That is the ecosystem working as designed — obsolete is a formal lifecycle state that stops new adoption rather than leaving a dead project looking alive. Do not plan a site around it. The underlying need has not gone away, so the practical answer is elsewhere: keep the patch list in `composer.json` with a comment and an issue URL for every entry, which is the record that survives, and review it as part of every update rather than relying on the site to remind you.

---

- Understand why patchinfo cannot be installed.
- Recognise the obsolete lifecycle state.
- Find what replaced patch reporting.
- Audit patches on an existing site.
- Review an inherited site's patches.
- Document patches in composer.json instead.
- Plan an update that preserves patches.
- Identify patches lost in an update.
- Explain a failed drush en.
- Assess an old site's maintenance debt.
- Track drupal.org issue references for patches.
- Migrate away from an obsolete module.
- Clean up a site's module list.
- Check patch coverage before upgrading.
