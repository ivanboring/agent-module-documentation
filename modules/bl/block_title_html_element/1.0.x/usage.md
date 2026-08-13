<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Block Title HTML Element lets administrators choose which HTML element wraps a block's title, selected from a safe allowlist.

---

The module adds a "Block Title HTML Element" selector to the block configuration form (only for users with `administer block title element`) and stores the choice as a block third-party setting `title_element`. An `ElementValidator` service enforces a fixed allowlist — `h2, h3, h4, h5, h6, span, p, em, b, i` (h1 is intentionally excluded for document hierarchy/SEO) — that other modules may extend via `hook_block_title_html_element_allowed_elements_alter`. On `hook_block_presave`, an invalid or empty value is unset (falling back to the theme default), so unsafe or arbitrary element names cannot be persisted.

To render the chosen element, a theme's `block.html.twig` uses the `title_element` variable (defaulting to `strong`). Because the value is validated against a server-side allowlist at save time and only trusted admins can set it, there is no XSS/markup-injection surface — custom elements and scripts are rejected. It is a small, single-purpose display enhancement with one permission and no routes of its own.

---
- Grant `administer block title element` to site builders
- Configure a block and open the Block Title HTML Element section
- Choose an `h2`–`h6` heading for a block title
- Use `span` or `p` for non-heading block titles
- Emphasise a title with `em`, `b` or `i`
- Keep block titles semantically correct for accessibility
- Avoid `h1` in blocks to preserve document hierarchy
- Update `block.html.twig` to honour the `title_element` variable
- Fall back to the default `strong` element when none is chosen
- Extend the allowed element list via the alter hook
- Rely on server-side validation to reject unsafe elements
- Apply per-block title elements across any block type
- Store the choice as the `title_element` block third-party setting
- Reset invalid saved values automatically on block presave
- Restrict the selector to holders of `administer block title element`
- Improve SEO by using correct heading levels in blocks
