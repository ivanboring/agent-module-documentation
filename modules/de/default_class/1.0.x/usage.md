<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Default Class adds CSS classes derived from what Drupal already knows about the current page, giving themers stable hooks without writing preprocess code. It attaches region machine names (and plugin/provider/block-content type) as classes on blocks, and node, user, and taxonomy-term identifiers as classes on the `<html>`/page element.

---

There is no configuration and no routes: two preprocess hooks do the work. `hook_preprocess_block` adds `block`, the plugin id (except for block_content), the provider, a `block--REGION` class, and a `block--block-content--TYPE` class. `hook_preprocess_html` adds `node-{id}`/`node-{type}` on node pages, `user-{id}`/`user-{name}` on user pages, and `term-{id}`/`term-name-{label}`/`term-vid-{vid}` on term pages. Class values render through Drupal's Attribute object.

Setup: just enable the module; the classes appear immediately in markup.

---

- Add the region machine name as a class on every block
- Add the block plugin id as a class
- Add the module provider as a class on blocks
- Add a `block--block-content--TYPE` class for custom blocks
- Add `node-{id}` and `node-{type}` classes on node pages
- Add `user-{id}` and `user-{name}` classes on user pages
- Add `term-{id}` / `term-name` / `term-vid` classes on term pages
- Target a specific region in CSS via its class
- Style blocks per plugin without custom preprocess
- Give themers stable per-entity styling hooks
- Enable with zero configuration
- Distinguish block_content blocks from other plugins in CSS
- Scope styles to a single node by `node-{id}`
- Style all pages of a content type via `node-{type}`
- Style a user's pages via `user-{id}` / `user-{name}`
- Style term pages by id, name, or vocabulary
- Replace ad-hoc theme preprocess hooks with one module
