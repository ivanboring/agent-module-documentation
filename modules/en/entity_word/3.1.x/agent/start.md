<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Entity Word (entity_word) — agent index

**Downloads a node's title+body as a Word .docx via phpoffice/phpword, with admin-configured filename/margins/fonts. See security finding.**

- **Version:** 3.1.x  •  core: `^8.8 || ^9 || ^10`  •  configure: `entity_word.settings`  •  depends on `token` + composer `phpoffice/phpword`  •  permission `access download word document`.
- **Route:** `/entity-word/{node_id}/word` → `EntityWordController::nodeWord` (perm `access download word document`). Settings: `/admin/config/system/entity_word` (`administer site configuration`).
- **Build:** loads node, PhpWord section (paper size/margins/fonts from config), title as heading, body via `Html::addHtml`, streams Word2007 as attachment. `Settings::setOutputEscapingEnabled(TRUE)`.

**Security finding (D2, info disclosure / missing access check):** `EntityWordController::nodeWord()` loads the node by ID and outputs title+body with NO `$node->access('view')` and no published-status check. Any user with `access download word document` can read the title/body of ANY node — including unpublished or node-access-restricted content — via `/entity-word/{nid}/word`. Fix: check `$node->access('view')` (and handle a missing node) before rendering.
