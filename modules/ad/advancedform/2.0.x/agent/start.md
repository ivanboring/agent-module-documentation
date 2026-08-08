<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Advanced Form — agent index

Conditionally **hides admin UI features on forms** (declutter complex admin/edit forms). Config at
`advancedform.settings_form`; provides permissions. Version **2.0.0**. Core `^10||^11`.

**Caveat: hiding UI is NOT access control** — hidden fields are still present/submittable via the raw
request; data/permissions unchanged. Use real permissions/field access to restrict; this is UI tidiness
only. No access role.
