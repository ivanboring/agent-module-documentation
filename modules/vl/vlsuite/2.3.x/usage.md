<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
VLSuite is a page-building suite on top of Layout Builder: a library of block types, content collections, media types, layouts, animations, icon fonts and utility classes, assembled so a site can build landing pages without bespoke development for each component.

---

Layout Builder gives you sections and whatever blocks exist; it does not give you the blocks. Most projects then spend weeks building the same set — a hero, a call to action, a card grid, a statement, a gallery, a video embed, a webform block — and every project builds them slightly differently. VLSuite ships that set: `vlsuite_block_*` submodules for CTA, headings menu, icon, image, local and remote video, paragraph, text, webform and attachments; `vlsuite_collection_*` for card, gallery, hero and statement collections; `vlsuite_media_*` for document, icon, image and local/remote video media types; plus layouts, a slider, a modal, animations, an icon font and utility classes.

Sixteen top-level submodules and roughly thirty-six enabled components make this an adoption decision rather than an installation. Two pieces are there to manage that: **`vlsuite_shuttle`**, which the project description recommends installing "to optimize initial setup time" — the setup helper — and **`vlsuite_generator`**, which produces components. **`vlsuite_demo`** installs example content, which is the fastest way to see what the suite actually offers before committing, and equally something to remove before launch.

The permission `administer vlsuite settings` is `restrict access: true` and gates the settings index at `/admin/config/vlsuite`. A `VLSuiteUninstallValidator` guards uninstall, which is a good sign in a suite this size: it prevents removing a piece other pieces depend on and leaving a site with broken layouts.

Take the whole suite or don't. Cherry-picking a couple of block types brings the foundation anyway, and the value is in the coherence of the set rather than in any individual component.

---

- Build landing pages from a ready-made component set.
- Place a hero, CTA and card grid without custom development.
- Give editors a consistent library of block types.
- Add a slider or carousel to a Layout Builder page.
- Show a gallery collection.
- Embed local or remote video as a component.
- Place a webform inside a built page.
- Use an icon font across components.
- Apply animations to layout sections.
- Apply utility classes from the editor.
- Add a modal to a page.
- Install demo content to evaluate the suite.
- Speed initial setup with the shuttle module.
- Generate a new component with the generator.
- Standardise landing-page structure across a site.
- Avoid rebuilding the same components each project.
- Keep uninstall safe with the bundled validator.
- Remove demo content before launch.