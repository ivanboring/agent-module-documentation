<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# None Title (none_title) — agent index

Hides a node's title from display when the editor types the literal **`<none>`** into the title
field. Depends on core `node`. Version **3.1.0**. Core requirement `^9.1 || ^10 || ^11`.

**Why the requirement is real:** Drupal requires a node title — it is the entity's **label**, used
in admin listings, search results, menus and the page `<title>` — so it cannot be left empty. The
alternatives are a theme override per content type or a "display title" boolean field the site
builder must add.

**Three consequences of the sentinel being stored data, which travels further than the display —
check each:**
1. **`<none>` becomes the node's label.** Unless the module also intervenes there, it appears in
   the admin content listing, autocomplete results, a reference field's rendered label, breadcrumbs
   and search.
2. **`<title>` and Open Graph title are built from the label.** A page hiding its heading may be
   telling search engines and social platforms that its title is `<none>`.
3. **An accessible page needs a heading.** Hiding the `<h1>` because the design puts the words in a
   hero is fine **only if those words are still marked up as a heading**.
