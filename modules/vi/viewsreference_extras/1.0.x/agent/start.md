<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Views Reference Extras (viewsreference_extras) — agent index

Extra **per-embed options** for **Views Reference Field**. Requires `views` and `viewsreference`;
test dependency on `views_ajax_history` suggests AJAX-paged embeds are in scope. Version **1.0.3**.
Core requirement `^10.2 || ^11`.

**The gap it fills:** a view embedded in two places usually needs to **differ slightly** between
them — item count, pager shown or hidden, header suppressed, title present. Without per-embed
options the answer is **a duplicated view display per variation**, which is how a site ends up with
fourteen displays of the same view that nobody can tell apart.

**Two things to keep in view:**
1. **Every per-embed option is a setting an editor can get wrong.** The useful set is **small and
   named after outcomes** — "show all items", "hide the pager" — not the view's full options
   surface, which recreates the Views UI inside a content form.
2. **An embedded view's cache metadata belongs to the host.** Options that change what the view
   returns change what must be **varied on** — a per-embed argument or filter must reach the render
   array's **cacheability**, not be applied after it.
