<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Field CSS provides a field type for entering CSS, which it renders scoped to the entity, so an editor can style a specific node or block without a theme change.

---

Sometimes one piece of content needs a bit of bespoke styling and opening the theme is disproportionate. Field CSS makes CSS a field: add it to a bundle, and an editor can enter rules that apply to that entity. Crucially, the module **scopes the CSS to the entity** — it generates a per-entity prefix (`scoped-css--[entity-type]-[entity-id]`, sanitised through `Html::cleanCssIdentifier`) so the rules do not leak out to the whole page, which is the right default and avoids one entity's styling breaking the site.

The security consideration is who holds the field. CSS is more powerful than it looks: even scoped, it can load remote resources (`background-image: url(...)`), and CSS-based techniques can exfiltrate data through attribute selectors or reshape the UI for clickjacking-style tricks. So the `access css fields` permission is the real control, and it belongs to trusted content authors, not any authenticated user — entering CSS is closer to a developer capability than an editorial one. The scoping limits blast radius but does not make arbitrary CSS harmless.

For a site where trusted editors occasionally need per-entity styling, it is a tidy alternative to theme edits. Grant the field permission narrowly, and treat CSS input with the same care as any powerful, trusted-user capability.

---

- Style one node with custom CSS.
- Add bespoke styling to a block.
- Avoid a theme edit for one entity.
- Scope CSS to a single entity.
- Let trusted editors style content.
- Add a CSS field to a bundle.
- Prevent CSS leaking site-wide.
- Style a landing page inline.
- Restrict CSS input by permission.
- Grant css fields to trusted authors only.
- Keep per-entity styling with the entity.
- Override styling for one item.
- Treat CSS input as a trusted capability.
- Use a per-entity scoped prefix.
- Avoid global style breakage.
- Style a specific paragraph.
- Add one-off design tweaks.
- Keep CSS out of the theme.
- Understand CSS can load remote assets.
- Limit who can enter CSS.