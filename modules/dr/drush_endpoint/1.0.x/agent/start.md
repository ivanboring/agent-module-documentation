<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Drush Endpoint — agent index

**HTTP endpoint to run allowlisted Drush commands** (`POST /api/drush/{command}`). Version **1.0.0-rc1**. Core `^10||^11||^12`.

**SECURITY (1.0.0-rc1):** off unless `$settings['drush_endpoint_enabled']=true`, but the access checker ignores the account — once enabled ANY (anonymous) caller can run the 7 allowlisted commands (`mr` deletes migrated content; `uli`→ATO if allowed). Add a permission/token check + firewall before use.