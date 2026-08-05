<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Social Media Platforms puts a site's own social profile links into a configurable block — the row of icons in a footer pointing at the organisation's Facebook, LinkedIn and YouTube pages.

---

This is the other kind of social module, and the distinction matters: it links **out to the organisation's own profiles**, it does not add share buttons for the visitor's use. That difference is entirely a privacy one. Share widgets load third-party scripts that track visitors on sight and therefore need consent; profile links are ordinary anchors that load nothing and need none. Every site has the footer row, and the alternatives are hard-coding it in a template (a deploy to change a URL) or a custom block of pasted HTML (editable but with no structure, no validation and inconsistent icons). A configuration form plus a block is the right size for the problem. Version **1.1.0** on core `^10.2 || ^11`, depending on core `block`, configured at `/admin/config/services/social-media-platforms` behind `administer social media platforms` — a permission that is **not** marked `restrict access`, which is defensible here since its holder can only set outbound URLs, though those URLs do appear on every page the block is placed on. The thing to check when choosing between modules of this type is the **platform list**: whether it is fixed to the platforms the author thought of, or extensible, since the set of networks that matter changes faster than module releases do.

---

- Add social profile links to a footer.
- Link to the organisation's LinkedIn page.
- Show social icons in a header.
- Update a profile URL without a deploy.
- Standardise social icons across a site.
- Replace a hand-coded template block.
- Add a YouTube channel link.
- Place social links in a sidebar.
- Keep social URLs in configuration.
- Add links without third-party scripts.
- Avoid a consent requirement.
- Show only the platforms in use.
- Let a marketer edit profile links.
- Add an Instagram profile link.
- Support a multilingual footer.
- Control icon order.
- Place the block per theme region.
- Keep branding consistent.
