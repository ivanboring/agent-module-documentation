<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Timetable Cron (timetable_cron) — agent index

`timetable_cron` **config entities** describing when cron work runs, plus a force-run form.
Manage at `/admin/config/system/timetable_cron` (`entity.timetable_cron.collection`).
Version **8.x-1.7**. Core `^9 || ^10 || ^11`. No dependencies.

Permission: `configure timetable_cron` — **`restrict access: TRUE`**, gating all five routes
(collection, add, edit, delete, **force**). Correct: forcing runs server-side work on demand.

Routes: `/admin/config/system/timetable_cron[/add | /{timetable_cron}[ /delete | /force ]]`.

Classes: `Entity/TimetableCronEntity`, `TimetableCron` + `TimetableCronRuntime`,
`TimetableCronServiceProvider`, `ProxyClass/TimetableCron`, forms
(`TimetableCronForm`, `TimetableCronForceForm`, `TimetableCronDeleteForm`).

Prefer this over crontab entries when the schedule should be **reviewable and deployable** —
config entities export and diff; server crontabs do not.

If cron misbehaves after install, look at `TimetableCronServiceProvider` — cron is **decorated**,
not merely observed.