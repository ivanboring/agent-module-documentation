<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Config Notify (config_notify) — agent index

Notifies when active configuration diverges from exported configuration. Depends on core
`config`. Core requirement `^8.8 || ^9 || ^10 || ^11`.
Settings at `/admin/config/development/configuration/notify`, gated by core's
**`synchronize configuration`** — an appropriate reuse, since that already governs config
import/export.

Key facts:
- `src/NotifierService.php` performs the check and dispatches notifications.
- **It needs a trigger** — put the check on cron; drift discovered by someone remembering to look
  is drift discovered on deploy day.
- **Expect baseline noise and tune for it.** Some drift is normal: modules that write
  configuration at runtime, and anything deliberately excluded via `config_ignore` /
  `config_split`. An untuned check that always reports drift trains people to ignore it.
- Complements `config_override` (wave 64), which is about *runtime* overrides that deliberately do
  not appear in exports — different concern, and worth distinguishing when both are in play.
