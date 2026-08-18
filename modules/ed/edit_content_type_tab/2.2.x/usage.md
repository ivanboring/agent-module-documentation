<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Edit Content Type Tab adds a tab on a node that jumps straight to that node's content type (bundle) edit form.

---

Edit Content Type Tab (ECTT) adds a local task (tab) on node canonical pages that links directly to the
**content type management form** for that node's bundle (`/admin/structure/types/manage/{type}`). The tab title
is dynamic — it reads the node's bundle and shows `Edit '<Type Name>' type`. Clicking it hits the module's own
route (`/node/{node}/edit_content_type_tab`), whose controller loads the node, resolves its bundle, and issues a
redirect to the content type edit page with a `destination` query param so you land back on the node afterward.
It is a **navigation shortcut**, not a content operation: it does **not** convert, re-bundle, or alter the node,
and it causes no data loss. Access is gated by the core **`administer content types`** permission, so only site
builders/administrators see the tab. It is in the Development package and useful when templating or site
building across many content types. No configuration UI, no settings, no dependencies beyond Drupal core.

---

- Jump from a node straight to its content type edit form.
- Edit a bundle's fields/display while viewing a node of that type.
- Speed up site building across sites with many content types.
- Reach the "Manage fields" / "Manage form display" / "Manage display" pages via the type edit form.
- Return to the node automatically after editing the type (destination param).
- See which content type a node belongs to at a glance (dynamic tab title).
- Give site builders a one-click path from content to structure.
- Avoid manually navigating admin/structure/types to find the right bundle.
- Template new content types quickly during theming work.
- Tweak a node type's settings without leaving the node context.
- Restrict this shortcut to admins via `administer content types`.
- Add a convenience tab without writing custom local tasks.
- Provide editors-who-are-also-builders a faster workflow.
- Confirm a node's bundle name from the tab label.
- Use as a lightweight example of a dynamic local task title plugin.
- Bootstrap a content-type audit by hopping node → type → node.
- Reduce clicks during rapid prototyping of content models.
