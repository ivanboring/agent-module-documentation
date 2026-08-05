<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Layout Paragraphs Toggle Publish adds a publish/unpublish control to each component in the Layout Paragraphs builder, so a section can be hidden without being deleted.

---

Layout Paragraphs gives editors a drag-and-drop page builder made of paragraph components, and its controls cover add, edit, move and delete. The one missing verb is the one editors reach for constantly: *hide this for now*. A seasonal promotion, a section awaiting legal sign-off, a component being A/B compared — all want to be kept and not shown. Without a toggle the options are to delete it and rebuild later, or to keep an unused copy somewhere, and both lose work and context. Paragraphs entities already have a published flag; this exposes it in the builder's controls, requiring `paragraphs` and `layout_paragraphs ^2`, version **1.0.2** on `^8.8` through `^11`. The route is worth noting for its access handling: `/layout-paragraphs-toggle-publish/{layout_paragraphs_layout}/toggle-publish/{component_uuid}` uses **`_layout_paragraphs_builder_access: 'TRUE'`**, the parent module's own access requirement, rather than a flat permission — which is the correct choice, since it means the toggle is available to exactly the people who may already edit that layout, and it inherits any future change to the parent's rules. Two operational points: an unpublished paragraph is **hidden but present**, so it still occupies a delta, still exports, and still has to be handled by anything reading the field directly; and confirm the site's view modes and any API consumers actually respect the paragraph's published flag, because not all of them do.

---

- Hide a page section temporarily.
- Unpublish a seasonal promotion.
- Hold a section pending sign-off.
- Keep a component without showing it.
- Toggle a banner off after a campaign.
- Avoid deleting and rebuilding a section.
- Stage a section before launch.
- Hide a component during maintenance.
- Prepare a section in advance.
- Compare two versions of a section.
- Temporarily remove an announcement.
- Keep a draft component in place.
- Hide a section on a live page.
- Support an editorial review step.
- Retire a component gradually.
- Preserve a section's content and settings.
- Turn off an out-of-date block.
- Manage a page's sections over time.
