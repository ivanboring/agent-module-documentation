<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# DCAT-AP (dcat_ap) — agent index

**Adds DCAT-AP 2.1.0 profile fields + mandatory/recommended constraints to the base dcat entities.**

- **Version:** 1.0.x
- **Core:** ^10 || ^11
- **Package:** DCAT
- **Dependencies:** dcat
- **No routes / permissions / services.** Pure field layer.
- **Plugins (DcatFieldProvider):** `DcatApDatasetFields` (`dcat_ap_dataset_fields`), `DcatApDistributionFields`, `DcatApAgentFields`.
- **Install:** `dcat_ap_install()` → `dcat_sync_entity_schemas()` writes new/altered base fields to the DB.
- **Security:** No routes, no request handling, no external I/O. No security findings.
