<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
LocalGov Publications turns long documents — strategies, plans, annual reports — into structured **HTML publications** with chapters and navigation, so a council publishes readable web pages instead of a PDF.

---

Public-sector organisations produce long formal documents, and the default publication route is a PDF, which is poor for accessibility, poor on mobile, unsearchable in site search and impossible to update in part. The alternative is a multi-page HTML publication with a contents page, chapter navigation and next/previous links — which is what core's **Book** module already models, and what this builds on. It uses Book for the hierarchy (its `publication.admin_edit` route reuses `\Drupal\book\Form\BookAdminEditForm` for reordering, requiring both `administer book outlines` and `_entity_access: node.view`), Pathauto for chapter URLs, and LocalGov's own media and paragraphs modules for the content within each chapter. Two stylesheets cover layout and icons, and a single permission, `access publication views`, governs the administrative listings. Note the dependency on `book:book` as a **contributed** project: Book left Drupal core after Drupal 10, so an 11 site must install `drupal/book` explicitly — the composer file requires it. Requirements are core `^10 || ^11` plus the LocalGov stack.

> Documented from source: `drush en localgov_publications` on a bare Drupal 11.4 site failed with
> an unmet config dependency on `filter.format.wysiwyg`, a text format supplied by the LocalGov
> distribution. The module expects its distribution, not bare core.

---

- Publish a council strategy as HTML chapters.
- Replace a PDF annual report with web pages.
- Give a long document a contents page.
- Add next and previous navigation to chapters.
- Make a formal document accessible.
- Let a document be found by site search.
- Update one chapter without republishing everything.
- Reorder chapters from an admin screen.
- Generate readable chapter URLs.
- Publish a local plan for consultation.
- Meet public-sector accessibility obligations.
- Show a document's structure to readers.
- Support mobile readers of a long report.
- Reuse LocalGov paragraph components in chapters.
- Print a publication chapter cleanly.
- Restrict publication listings by permission.
- Migrate a PDF library to HTML.
- Provide a contents listing for a policy set.
