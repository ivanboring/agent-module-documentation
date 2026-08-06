<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Drupal Module Upgrader analyses a Drupal 7 module and reports — and in places rewrites — what has to change to run on a modern Drupal.

---

Porting a custom module from Drupal 7 is a large, mechanical job with a small creative core. Hooks became services and event subscribers, `hook_menu` became routing YAML plus controllers, `drupal_add_js` became libraries, `db_query` became the database API, variables became configuration, and forms became classes — and most of a legacy module is that mechanical translation rather than anything the original author thought hard about. A tool that identifies each instance and converts what is safely convertible turns an intimidating rewrite into a reviewable list. That is what DMU does, with an analysis report as its main output and automated conversion for the patterns that permit it. Version **2.0.0-alpha2** on core `^10 || ^11`, in the Development package. The dependency block in its `info.yml` is **commented out** with a note explaining that those dependencies are for the test suite and require the *Drupal 7* versions of the modules — which is a good illustration of what this tool is: something that reads D7 code while running on modern Drupal. Three things to expect. **The output is a starting point, not a port** — a module that runs is not a module that is right, and the parts a tool cannot convert are exactly the parts that carried the original's intent. **Drupal 7 reached end of life in January 2025**, so any site still on it is unsupported and the pressure is real. And **the honest question for each module is whether to port it at all**: a great deal of D7 custom code exists because contrib did not cover the case in 2014, and the first step of an upgrade is checking whether it does now.

---

- Analyse a Drupal 7 module for porting.
- List what must change to upgrade.
- Convert hook_menu to routing.
- Estimate a module port's effort.
- Automate mechanical upgrade changes.
- Find deprecated API usage.
- Convert variables to configuration.
- Plan a Drupal 7 to 11 upgrade.
- Convert forms to classes.
- Report on a legacy codebase.
- Identify convertible patterns.
- Support an end-of-life migration.
- Assess a custom module's upgrade cost.
- Convert database calls.
- Prioritise modules for porting.
- Support an upgrade audit.
- Find code needing manual attention.
- Reduce mechanical porting work.
