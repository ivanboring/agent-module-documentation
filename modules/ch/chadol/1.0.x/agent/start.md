<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Chado Light (chadol) — agent index

**Interfaces Chado biological databases** via External Entities (Tripal/bioinformatics). Depends on
`external_entities` (+ `xnttsql`, `dbxschema_pgsql`). Provides permissions. Version **1.0.0-beta4**. Core
`^9||^10||^11`.

Data-integration — reads an **external Chado DB** (store its credentials as secrets; expose only intended
records). No broad access role beyond permission.
