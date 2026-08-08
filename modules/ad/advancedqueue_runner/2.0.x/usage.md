<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Advanced Queue Runner assists the Advanced Queue module by running queues in the background without activating a cron job or running a command.

---

Advanced Queue Runner helps the Advanced Queue module process its queues in the background — running
queued jobs without requiring a configured cron job or a manual Drush/CLI run, so queued work is processed
more promptly (e.g. triggered from request processing). It depends on the Advanced Queue module, in the
Custom package.

Use it to process Advanced Queue jobs without relying on cron. It is an automation/queue feature that runs
queued work; the jobs run with the site's privileges (as background processing does), so ensure only trusted
code enqueues jobs and be aware background processing consumes server resources. It has no access-control
role. Configure the queue processing.

---

- Run Advanced Queue jobs in the background.
- Process queues without cron.
- Avoid manual queue runs.
- Depend on the Advanced Queue module.
- Process queued work promptly.
- Trigger processing from requests.
- Run jobs with site privileges.
- Ensure only trusted code enqueues jobs.
- Mind resource consumption.
- Have no access-control role.
- Configure queue processing.
- Process advanced queues.
- Run background jobs.
- Handle queue running.
- Process jobs automatically.
- Avoid cron dependency.
- Run queues.
- Configure the runner.
- Process background work.
- Run queued jobs.
