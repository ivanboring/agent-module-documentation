<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# CSV Field — agent index

Field type that **stores CSV data** and renders it as an **HTML table** (parsed via PapaParse).
Depends on core `file` + `papaparse` library. Version **3.0.6**. Core `^9.3||^10||^11`.

Content-display/field module (no access control). Table derives from authored field data — normal
render/escaping applies.
