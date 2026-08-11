<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Entity reference pagination formatter renders referenced entities across paginated pages.

---

Entity reference pagination formatter is a field formatter for entity_reference fields that paginates the referenced entities — so a field with many references renders a page at a time (with AJAX links) rather than all at once, improving performance and usability for large reference sets.

It's a display formatter with no content or access role of its own; referenced entities respect their own access. Depends on `ajax_link`; supports Drupal 10.3+, 11, and 12.

---

- Paginate referenced entities.
- Render references a page at a time.
- Use AJAX pagination links.
- Handle large reference sets.
- Improve display performance.
- Act as a field formatter.
- Respect entity access on render.
- Depend on `ajax_link`.
- Support Drupal 10.3+, 11, and 12.
- Carry no content/access role.
- Configure page size.
- Apply to entity_reference fields.
- Reduce initial render load.
- Page through references.
- Improve usability.
- Display references incrementally.
- Support many references.
- Configure the formatter.
