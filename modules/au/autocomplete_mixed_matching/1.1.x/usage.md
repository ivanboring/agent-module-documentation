<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Autocomplete widget with mixed matching offers entity reference suggestions that put prefix matches first and still include substring matches below them.

---

Drupal's autocomplete offers one matching operator per field: **STARTS WITH**, which finds "Smith" when you type "Smi" and misses it when you type "mith", or **CONTAINS**, which finds it either way and buries the exact match among everything else containing the string. Both are wrong for the common case, because people type the beginning of what they are looking for *and* sometimes type a distinctive fragment from the middle. Typing "smith" into a staff list should offer Smith first and Blacksmith after, not Blacksmith first because it happens to sort earlier, and not nothing at all. Combining the two orderings — prefix matches ranked above substring matches — is what every search box a user has met elsewhere does. Version **1.1.0** on core `^10 || ^11`, declaring `php: 8.1`. Two things follow. **CONTAINS cannot use a normal index**, since a leading wildcard forces a scan, so on a reference target of a hundred thousand rows the substring half is the expensive half and worth measuring on production-sized data rather than on a development site with forty terms. And **autocomplete respects the selection handler's access**, which is the correctness point: suggestions must be filtered by what the current user may reference, or the widget becomes a way to enumerate entity labels — including unpublished ones — by typing letters, which is a quiet disclosure that nobody notices because it looks like a helpful list.

---

- Find a name typed from the middle.
- Rank exact prefix matches first.
- Improve a staff-lookup autocomplete.
- Find a term by a distinctive fragment.
- Improve a large taxonomy's usability.
- Match a product by part of its code.
- Improve a reference field's suggestions.
- Find a company by its second word.
- Reduce failed lookups.
- Improve editorial search in a widget.
- Match a location by a district name.
- Improve a member directory's autocomplete.
- Find content by a mid-title phrase.
- Reduce scrolling in suggestions.
- Improve a tag field's matching.
- Support imprecise recall.
- Improve an entity reference widget.
- Find an item by a partial identifier.
