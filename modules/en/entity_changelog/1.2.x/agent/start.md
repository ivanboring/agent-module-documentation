<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Entity Changelog — agent index

Records a **changelog of entity create/update/delete (CUD) actions** (audit trail — what changed, when, by
whom). Depends on core `views`; provides permissions. Version **1.2.0**. Core `^10||^11`.

Admin/audit — the log can hold sensitive change detail; gate access to trusted admins. No access role beyond
permission.
