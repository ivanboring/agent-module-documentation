<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Configurable Anonymizer — agent index

Configures **sensitive (PII) fields** and **anonymizes them after a DB sync** (prod→staging/dev) —
pluggable field-anonymizer plugins (default, UUID, custom), config form, **Drush command**. Version
**1.0.1**. Core `^11`.

**Operational rule:** run **before** the non-prod copy is used and **never against production**.
Developer/privacy tool.
