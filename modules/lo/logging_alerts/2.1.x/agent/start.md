<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Logging and alerts (logging_alerts) — agent index

**The project has no module at its root.** `web/modules/contrib/logging_alerts/` contains only
`LICENSE.txt` plus two subdirectories, each a complete module:

| Module | Sends logs to | Config route |
|---|---|---|
| **`emaillog`** | email addresses, severity-routed | `/admin/config/development/emaillog` |
| **`errorlog`** | the web server's error log | `/admin/config/development/errorlog` |

So `drush en logging_alerts` fails — enable `emaillog` and/or `errorlog` directly. (This is also
why tooling that resolves a project to a root `*.info.yml` reports it as not installed.)

Core requirement `^10.3 || ^11`. **Release is 2.1.0-beta1 — beta.** `emaillog` depends on core
`user`; `errorlog` has no dependencies.

Key facts:
- Both implement logger channels (`src/Logger/` in each) registered via their own
  `services.yml`, and each ships a formatting template (`emaillog.html.twig`,
  `errorlog-format.html.twig`).
- Both config forms are gated by core's **`administer site configuration`**; neither module
  declares a permission of its own.
- `emaillog`'s severity routing — different severities to different addresses — is what makes it
  an alerting channel rather than just a log sink.
- **Two cautions worth stating when recommending `emaillog`:**
  1. *Data exposure.* Drupal log messages routinely carry user input, IP addresses, usernames
     and request details. Emailing them moves that through a mail provider and into inboxes,
     which is a privacy decision, not just an operational one.
  2. *Volume.* An erroring site produces errors at machine speed. Set severity thresholds
     deliberately, and check whether the mail path rate-limits — an error loop can otherwise
     generate a mail loop.
