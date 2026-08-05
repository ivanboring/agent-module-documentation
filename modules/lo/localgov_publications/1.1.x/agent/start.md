<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# LocalGov Publications (localgov_publications) — agent index

Structured **HTML publications** (chapters, contents, navigation) for the LocalGov Drupal
distribution. Core requirement `^10 || ^11`.

> **Documented from source.** `drush en localgov_publications` failed on bare Drupal 11.4 with an
> unmet config dependency: `core.entity_view_display.paragraph.localgov_contact.default`
> requires `filter.format.wysiwyg`, a text format the LocalGov distribution supplies. It expects
> its distribution, not bare core — install `localgov_base`/the distribution first.

Key facts:
- **Built on core's Book model.** `publication.admin_edit` at `/admin/structure/publications/{node}`
  reuses `\Drupal\book\Form\BookAdminEditForm` and requires **both**
  `administer book outlines` **and** `_entity_access: 'node.view'`.
- **`book` is a contributed project on Drupal 11** — Book left core after Drupal 10, and
  `composer.json` requires `drupal/book ^1.0.0` accordingly. A D11 site must install it explicitly.
- Other dependencies: `pathauto` (chapter URLs), `localgov_core:localgov_media`,
  `localgov_paragraphs` (chapter content components), core `block`, `menu_ui`, `text`, `views`.
- One permission, `access publication views` — administrative listings only; reader access is
  ordinary node access.
- `config/localgov/` alongside `config/install` is the distribution's own config-management
  convention.
