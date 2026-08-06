<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Timetable Cron adds `timetable_cron` configuration entities that describe when work should run, extending core cron with a timetable rather than a single global interval, plus a form to force a run by hand.

---

Core cron is one queue on one schedule: everything registered runs when cron runs, and the only lever is how often that happens. Real sites want more shape than that — a nightly import that must not run during business hours, a cache warm that should only fire early morning, a heavy report that belongs at the weekend. Without something like this the usual answer is several system cron entries hitting different Drush commands, which moves the schedule out of Drupal and out of configuration.

Here each schedule is a configuration entity with its own add, edit, delete and **force** forms, listed at `/admin/config/system/timetable_cron`. Because they are config entities they export and deploy with the rest of the site's configuration, so the schedule is reviewable in a diff and identical across environments — which is the main reason to prefer this over crontab entries that live only on one server.

The force-run form is the operationally valuable part: when a scheduled job has not produced what was expected, being able to trigger it from the UI and watch the result beats waiting for the next window. The permission gating all of this, `configure timetable_cron`, is marked `restrict access: TRUE` — correctly, since forcing a job runs server-side work on demand.

Note that the module's service arrangement includes a `TimetableCronServiceProvider` and a `ProxyClass`, so cron behaviour is decorated rather than merely observed; if cron stops behaving as expected after install, that decoration is where to look.

---

- Run a cron task only overnight.
- Keep a heavy job out of business hours.
- Schedule a weekly job separately from hourly ones.
- Give each job its own timetable.
- Force a scheduled job to run now.
- Export cron schedules with site configuration.
- Keep schedules identical across environments.
- Review a schedule change in a config diff.
- Replace several crontab entries with in-Drupal schedules.
- Delay a job until after a nightly import.
- Stop a report from competing with peak traffic.
- Restrict who can change or force cron schedules.
- List every scheduled job in one place.
- Diagnose a job that did not run at the expected time.
- Retire a schedule without touching the server.
- Stage a schedule change through deployment.