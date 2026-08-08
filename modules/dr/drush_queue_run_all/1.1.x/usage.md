<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Drush Queue Run All provides a queue:run-all Drush command that processes all queues, optionally as a daemon.

---

Drush Queue Run All provides a `queue:run-all` Drush command — processing **all** queues in one command
(rather than naming each), optionally running as a **daemon** (continuously) for background queue processing.
It requires PHP 8.1, provides Drush commands, in the Drush package.

Use it to process all queues from the CLI/cron. It is a developer/DevOps automation tool; queue items run
with the site's privileges (as queue processing does), so ensure only trusted code enqueues work and manage
the daemon appropriately. It has no access-control role. Run the command from cron/CLI.

---

- Process all queues in one command.
- Provide queue:run-all.
- Run optionally as a daemon.
- Require PHP 8.1.
- Process queues from the CLI.
- Run continuous background processing.
- Run queue items with site privileges.
- Ensure only trusted code enqueues.
- Have no access-control role.
- Run from cron/CLI.
- Handle queue processing.
- Process queues.
- Run the daemon.
- Configure processing.
- Process all queues.
- Handle the command.
- Run queues.
- Process background work.
- Manage the daemon.
- Handle queue running.
