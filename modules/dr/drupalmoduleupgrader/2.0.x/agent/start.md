<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Drupal Module Upgrader (drupalmoduleupgrader) — agent index

Analyses a **Drupal 7 module** and reports — and where safe, rewrites — what must change for modern
Drupal. Package `Development`. Version **2.0.0-alpha2** — alpha.
Core requirement `^10 || ^11`.

**Note the commented-out dependency block in its `info.yml`**, with a comment explaining those
dependencies are for the test suite and need the **Drupal 7** versions. That illustrates what the
tool is: **something that reads D7 code while running on modern Drupal**.

**Why it helps:** most of a legacy module is **mechanical translation**, not thought — hooks to
services and event subscribers, `hook_menu` to routing YAML plus controllers, `drupal_add_js` to
libraries, `db_query` to the database API, variables to configuration, forms to classes. Identifying
each instance turns an intimidating rewrite into a **reviewable list**.

**Three things to expect:**
1. **The output is a starting point, not a port.** A module that runs is not a module that is right,
   and **the parts a tool cannot convert are the parts carrying the original's intent**.
2. **Drupal 7 reached end of life in January 2025** — any site still on it is unsupported.
3. **The honest question for each module is whether to port it at all.** A great deal of D7 custom
   code exists because contrib did not cover the case in 2014. **Check whether it does now.**
