<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Collapsiblock makes individual blocks collapsible — click the title to fold the block away — with per-block default states and the open/closed choice remembered across pages via a cookie.

---

Sidebars and footers accumulate blocks, and on smaller screens a long stack of them pushes content down. Making blocks collapsible lets a visitor fold away what they are not using, and lets a site builder ship some blocks collapsed by default. Doing this by hand is a theme-and-JavaScript job per block; Collapsiblock makes it a per-block setting.

It works at the block level, with options for the default state (always open, always collapsed, collapsed on load, remember per user) and remembers the visitor's choice through its **js_cookie** dependency. It has no permission surface — it changes how blocks behave for everyone who sees them. As a UI enhancement its main compatibility concern is the theme: the collapse behaviour attaches to block markup, so confirm it works with your theme's block structure.

For content-dense sidebars and mobile layouts it is a small, useful interaction. Confirm the default states match how you want each block to first appear.

---

- Make a block collapsible.
- Let visitors fold away a block.
- Ship a block collapsed by default.
- Tidy a long sidebar.
- Improve a mobile layout.
- Remember a block's open state.
- Set a per-block default state.
- Collapse a footer block.
- Toggle a block by its title.
- Reduce sidebar clutter.
- Configure default collapse per block.
- Remember choice via a cookie.
- Enhance block UX.
- Fold optional content.
- Confirm theme block markup works.
- Collapse blocks on load.
- Give blocks accordion behaviour.
- Improve dense layouts.
- Apply per block without code.
- Manage block visibility interactively.