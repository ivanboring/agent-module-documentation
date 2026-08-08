<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Config Import Delete Entities (config_import_de) — agent index

**Deletes content entities orphaned by a config import** (e.g. content of a deleted content type).
Version **8.x-1.3**.

**Data-loss warning:** a config change (removing a type/field) now **deletes the associated content
irreversibly**. Review what a config import will delete, keep backups, run deliberately — especially
on production.