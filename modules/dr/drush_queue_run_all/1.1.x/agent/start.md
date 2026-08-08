<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Drush Queue Run All — agent index

A Drush command (**`queue:run-all`**) that **processes all queues, optionally as a daemon** (continuous
background processing). Requires PHP 8.1. Version **1.1.1**. Core `^10.1||^11`.

Developer/DevOps automation — queue items run with the site's privileges (ensure only trusted code enqueues);
no access role.
