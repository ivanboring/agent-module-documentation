<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Alt Text Import CSV — agent index

**Bulk-updates image/media alt texts from an uploaded CSV** (accessibility remediation). Depends on core
`media`, `path`, `entity_usage`, `multivalue_form_element`. Provides permissions. Version **1.0.0-beta5**. Core
`^9||^10||^11`.

Content/accessibility tool — processes an **untrusted CSV** (values follow normal field sanitization), edits
media site-wide: run as a trusted operator. No access role beyond permission.
