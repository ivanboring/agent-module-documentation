<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# EPT Views (ept_views) — agent index

Paragraph type embedding an **existing view** into a page's flow. Requires `ept_core`,
`paragraphs`. Version **2.0.0**. Core requirement `^10.1 || ^11 || ^12`.

**Why a page builder needs it:** a component-built page usually needs one thing it does not contain
— **a listing of something else**. Static content is wrong within a month; a view display per page
is a view display per page. This keeps **one view definition** and lets the editor place it. Same
reasoning as `viewsreference` and `viewfield`; this is the **paragraph-shaped** version.

**Three things to plan:**
1. **Contextual arguments are where editors come unstuck.** A view filtered by term needs a term,
   and an interface asking for a **raw id** will be got wrong **silently** — a wrong argument returns
   nothing and reads as *"there is no related content"*, not as a misconfiguration.
   `viewfield_argument_helper` (wave 79) exists for exactly this.
2. **The embedded view brings its own access and cache metadata.** The host page **varies by whatever
   the view varies by** — the page's cacheability must account for it, or one visitor's results are
   served to everyone.
3. **Decide which views an editor may embed.** An unrestricted list includes **administrative views
   and anything a module shipped** — a wider surface than the page builder needs.
