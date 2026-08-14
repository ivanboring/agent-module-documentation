<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Create Content with Category (createcontentwithcategory) — agent index
**Block of links that open the node-add form with a taxonomy term pre-populated.**

- **Version:** 1.0.x (1.0.0-alpha3)  •  **Core:** ^8 || ^9 || ^10 || ^11  •  **Requires:** prepopulate
- **Config route:** `createcontentwithcategory.config` `/admin/config/content/createcontentwithcategory` (`administer taxonomy`)
- **Config:** `createcontentwithcategory.settings:target_nodes_fields` = list of `content_type__field_name` ids
- **Block:** `createcontentwithcategory_block` (deriver, one per target); links → `node.add` with Prepopulate key `edit[<field>][widget]=<tid>`
- **Class:** `Ccwc` builds a themed menu from the field's target-bundle terms
- **Security:** config gated by `administer taxonomy`; no custom endpoints (node-add access still applies). Bug: `blockAccess()` references an undefined `$permission` var (does not check `create <type>` as intended).