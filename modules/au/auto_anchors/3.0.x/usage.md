<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Automatic Anchors generates `id` attributes on chosen elements — usually headings — so any section of a page can be linked to directly.

---

A deep link into a document is one of the most useful things a site can offer and one of the least often provided. Support staff want to send a customer to the right paragraph of a policy rather than to the top of a five-thousand-word page; documentation cross-references a specific step; a colleague shares "the bit about refunds"; a table of contents needs targets to point at. All of that requires an `id` on the heading, and nothing puts one there — a WYSIWYG produces `<h2>Refunds</h2>` with no attributes, and asking editors to add anchors by hand produces some pages with them and most without. Generating them from the heading text makes every heading on the site addressable. Version **3.0.0-beta1** — a **beta** — on core `^10.1 || ^11`, with a `show automatic anchor links` permission for displaying the visible permalink control and an `administer automatic anchors` permission marked `restrict access: true`. Two things determine whether the links keep working, and both are about **stability**. An id derived from the heading text **changes when the heading is edited**, so every link anyone shared to the old text breaks silently — which is the central trade of this approach, and a reason to prefer a stable derivation or to keep old ids alongside new ones where the content is long-lived. And **ids must be unique on the page**: two sections called "Overview" produce a collision, and the deduplication rule — a numeric suffix, usually — means the link that lands on the second one depends on document order, so inserting a new section can quietly redirect an existing link.

---

- Link to a section of a long policy.
- Send a customer to the right paragraph.
- Build a table of contents.
- Share a deep link to a heading.
- Cross-reference a documentation step.
- Add permalinks to headings.
- Support a knowledge base's navigation.
- Link into a FAQ answer.
- Reference a clause in terms and conditions.
- Improve a long page's usability.
- Support citations into a report.
- Add anchors to a legal document.
- Link to a specific step in a guide.
- Support in-page navigation.
- Improve support workflows.
- Add anchors to a curriculum page.
- Link to a section from another page.
- Support a manual's cross-references.
