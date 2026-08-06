<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Views Reference Extras adds further per-embed options to Views Reference Field — the module that lets a field reference a view and its display.

---

`viewsreference` is how a site lets editors place a view inside content while keeping the view itself a developer artefact: the editor chooses which view and display, and optionally supplies arguments and an item limit. The gap it leaves is that a view embedded in two places usually needs to differ slightly between them — a different number of items here, the pager shown there, the header suppressed in one, a title on the other — and without per-embed options the answer is a duplicated view display for each variation, which is how a site ends up with fourteen displays of the same view that nobody can tell apart. Extending the per-embed settings replaces those with one display and a few checkboxes. Version **1.0.3** on core `^10.2 || ^11`, requiring `views` and `viewsreference`, with a test dependency on `views_ajax_history` suggesting AJAX-paged embeds are in scope. Two things to keep in view. **Every per-embed option is a setting an editor can get wrong**, so the useful set is small and named after outcomes — "show all items", "hide the pager" — rather than exposing the view's full options surface, which recreates the Views UI inside a content form. And **an embedded view's cache metadata belongs to the host**: options that change what the view returns change what must be varied on, so a per-embed argument or filter has to reach the render array's cacheability rather than being applied after it.

---

- Vary an embedded view per placement.
- Show more items in one embed.
- Hide the pager on a specific embed.
- Avoid duplicating view displays.
- Show a title on one embed only.
- Configure an embedded view inline.
- Reduce the number of view displays.
- Set an item limit per embed.
- Support editors placing views in content.
- Show the exposed filters on one embed.
- Embed the same view differently twice.
- Suppress a header in a placement.
- Support AJAX paging in an embed.
- Simplify a view's display list.
- Give editors safe view options.
- Configure a related-content embed.
- Vary an events listing per page.
- Reduce view maintenance overhead.
