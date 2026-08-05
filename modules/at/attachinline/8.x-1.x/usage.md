<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Attach Inline lets a render array carry inline JavaScript or CSS directly, without defining a library file for a two-line snippet.

---

Drupal's asset system is deliberately strict: assets come from libraries, libraries are declared in a `*.libraries.yml`, and code attaches them by name. That design buys aggregation, dependency ordering, cache correctness and a single place to audit what a page loads — and it is genuinely awkward for the case it does not cover, a snippet that exists only for one render array and has no meaningful existence as a reusable library. Drupal 7's `drupal_add_js($js, 'inline')` did this in one line; the replacement is to invent a library, and people instead paste a `<script>` tag into markup, which bypasses the asset pipeline entirely and every protection in it. This module supplies the missing path properly, decorating the **asset resolver** (`AssetResolverDecorator`, with its own `AttachedAssets` implementation) so inline snippets travel through the same machinery as everything else rather than around it. Version **8.x-1.8** on core `^10 || ^11`, no dependencies, no routes, no permissions. Use it with the same discipline the library system enforces: **an inline snippet is not aggregated and not cached separately**, so it is paid for on every render of that element, and it must never be built by concatenating anything that came from a request or from content — inline JavaScript is the classic XSS delivery point, and the moment a snippet is assembled from a variable rather than written as a constant, that is the risk being taken.

---

- Attach a two-line script to one element.
- Add a snippet without a library file.
- Initialise a widget inline.
- Pass a small configuration to JavaScript.
- Add scoped CSS to a block.
- Avoid pasting a script tag in markup.
- Keep a snippet inside the asset pipeline.
- Add a one-off style to a view.
- Port a Drupal 7 inline script.
- Attach CSS to a single render array.
- Add a snippet from a custom module.
- Avoid inventing a library for one use.
- Style one instance of a component.
- Add a tracking snippet to one page.
- Attach a polyfill conditionally.
- Add a small interaction to a form.
- Keep inline assets auditable.
- Prototype a front-end change quickly.
