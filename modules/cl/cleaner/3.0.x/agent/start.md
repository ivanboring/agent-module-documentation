<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Cleaner (cleaner) — agent index

Scheduled housekeeping — cache clearing, log trimming, table optimisation. No module
dependencies. PHP >= 8.1. Core requirement `^10 || ^11`. **Release is 3.0.0-alpha1 — alpha.**
Settings at `/admin/config/system/cleaner` (`administer site configuration`).

Key facts:
- Surface: `src/EventSubscriber/` (triggers the work), `src/Event/` (extension point),
  `src/Form/CleanerSettingsForm.php`, `config/install`, `config/schema`. No routes beyond the
  settings form, no permissions of its own.
- **Two things to settle before enabling:**
  1. *Cache clearing is not free.* A clear on a busy site causes a rebuild storm. Schedule it
     off-peak and infrequently — hourly cache clearing costs more than the disk it saves.
  2. *Deletion is irreversible, and logs are evidence.* Watchdog and session data are what an
     incident investigation reads. Decide retention deliberately, as with `revision_cleanup`
     (wave 62).
- Complementary rather than overlapping with `revision_cleanup` (entity revisions) and
  `purge_control` (external cache) documented elsewhere in this campaign.
