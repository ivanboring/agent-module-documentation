<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
None Title hides a node's title from display when an editor types `<none>` into the title field.

---

The requirement is real and recurring: a landing page whose design puts the headline inside a hero component, a page whose first paragraph carries the heading, a node used only as a container for referenced content. Drupal requires a node title — it is the entity's label, used in the admin listing, in search results, in menus and in the page's `<title>` element — so it cannot simply be left empty, and the usual answers are a theme override per content type or an unchecked "display title" setting the site builder has to add. A sentinel value in the title field is a blunt but effective alternative that puts the decision with the editor, per node. Version **3.1.0** on `^9.1 || ^10 || ^11`, depending on core `node`. Three consequences to think about before adopting it, because the sentinel is stored data and travels further than the display. **The literal string `<none>` becomes the node's label**, so unless the module also intervenes there it appears in the admin content listing, in autocomplete results, in a reference field's rendered label, in breadcrumbs and in search — check each. **The `<title>` element and the Open Graph title** are built from the label too, so a page that hides its heading may also be telling search engines and social platforms that its title is `<none>`. And **an accessible page needs a heading**: hiding the `<h1>` because the design places the words elsewhere is fine only if the words are still marked up as a heading somewhere.

---

- Hide a title on a landing page.
- Let a hero component carry the headline.
- Suppress a heading per node.
- Build a container node without a visible title.
- Avoid a theme override for one page.
- Hide titles on selected pages only.
- Give editors control over title display.
- Build a campaign page without a heading.
- Hide a title on a homepage node.
- Suppress a duplicate heading.
- Use a node as a layout container.
- Hide the title on a paragraph-built page.
- Avoid a display-title checkbox field.
- Suppress a title in a specific view mode.
- Build a design-led page.
- Hide a heading that repeats the hero text.
- Support a marketing page layout.
- Give a single node a different treatment.
