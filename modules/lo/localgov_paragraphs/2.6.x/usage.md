<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
LocalGov Paragraphs supplies the shared paragraph components LocalGov Drupal sites build pages from — text, image, link, contact and numbered-text blocks — plus submodules for layout paragraphs, views embedding, homepage components and subsites.

---

Rather than each LocalGov site inventing its own component set, this module ships the canonical one as `paragraphs_type` config: `localgov_text`, `localgov_image`, `localgov_link`, `localgov_contact` and `localgov_numbered_text`. Because they are ordinary paragraph types, editors compose pages with the standard Paragraphs UI and site builders can add fields to them like any bundle. Four submodules extend the set: `localgov_paragraphs_layout` adds layout-paragraphs support so components can be arranged in multi-column sections; `localgov_paragraphs_views` lets a view be embedded as a component; `localgov_homepage_paragraphs` supplies the components a council homepage needs; and `localgov_subsites_paragraphs` provides the richer component set used by subsite pages — the one `localgov_directories_promo_page` depends on. Dependencies are deliberately plain core field modules (`field`, `link`, `options`, `taxonomy`, `telephone`, `text`), so the component library carries no heavy runtime of its own. Note `telephone` is among them: on Drupal 11.4+ that is the **contrib** Telephone module, since core removed it.

---

- Give editors a consistent component library across LocalGov sites.
- Build a page from text, image and link components.
- Add a contact block to a service page.
- Present steps or criteria as numbered text components.
- Arrange components in multi-column layouts.
- Embed a view as a page component.
- Compose a council homepage from shared components.
- Build subsite pages with a richer component set.
- Reuse the same components across news, services and directories.
- Extend a shipped paragraph type with extra fields.
- Keep component definitions in exportable configuration.
- Avoid bespoke paragraph types per site.
- Give designers a predictable set of markup patterns.
- Support editorial teams moving between LocalGov sites.
- Underpin the directories promo page entry type.
- Standardise contact details presentation.
- Add a call-to-action link component to a landing page.
- Keep the component library free of heavy dependencies.
- Combine components with Layout Builder where needed.
- Migrate legacy body HTML into structured components.
