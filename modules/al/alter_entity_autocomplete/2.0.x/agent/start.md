<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Alter Entity Autocomplete — agent index

Lets editors enter **entity IDs/emails/URLs/path aliases directly** in entity-reference autocompletes
(Node/User/Term — vs only the label). Config at `alter_entity_autocomplete.admin_settings`. Version
**2.0.0**. Core `^10.2||^11`.

Content-editing/reference widget. Note: autocomplete normally filters by entity access; direct-ID input
bypasses that suggestion filter — the field's **selection/access validation still applies on save** (verify
for access-sensitive reference sets). No access role.
