<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
EPT Views adds a paragraph type that embeds an existing view, so an editor can place a listing into a page's flow.

---

A component-built page usually needs at least one thing it does not contain: a listing of something else. A campaign page wants the three most recent news items; a department page wants its staff; a service page wants related documents. Building those as static content means they are wrong within a month, and building a view per placement means a view display per page. A paragraph that embeds a view keeps one view definition and lets the editor decide where it appears, which is the same reasoning behind `viewsreference` and `viewfield` — this is the paragraph-shaped version of that, for sites already assembling pages from components. Version **2.0.0** requiring `ept_core` and `paragraphs`, core requirement `^10.1 || ^11 || ^12`. Three things are worth planning. **Contextual arguments are where this gets confusing for editors** — a view filtered by taxonomy term needs a term, and an interface asking for a raw id is one an editor will get wrong silently, since a wrong argument returns nothing and reads as "there is no related content" rather than as a misconfiguration; `viewfield_argument_helper`, documented in wave 79, exists precisely for that. **The embedded view brings its own access and cache metadata**, so the host page varies by whatever the view varies by, and the page's cacheability has to account for it or one visitor's results are served to everyone. And **which views an editor may embed is a decision worth making** — an unrestricted list includes administrative views and anything a module shipped, which is a wider surface than the page builder needs.

---

- Embed a news listing in a landing page.
- Show recent articles on a campaign page.
- Add a staff listing to a department page.
- Show related documents in a section.
- Embed an events listing.
- Place a filtered product grid in a page.
- Show a taxonomy's content inline.
- Add a case studies listing.
- Embed a publications view.
- Show upcoming courses on a page.
- Add a team listing component.
- Embed a search results view.
- Show a project's outputs.
- Add a resources listing to a guide.
- Embed a job vacancies view.
- Show latest blog posts in a section.
- Add a partner listing.
- Embed a testimonials view.
