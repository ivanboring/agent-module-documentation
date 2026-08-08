<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Field CSS (field_css) — agent index

Field type for entering **CSS**, rendered **scoped to the entity** (`scoped-css--[type]-[id]`, via
`Html::cleanCssIdentifier`). Version **2.0.0-rc7**. Core `^8.8.4 || ^9 || ^10 || ^11`.
Permission `access css fields`.

**Good:** CSS is scoped per-entity, not global — one entity's rules can't break the page.

**Caveat — the permission is the control.** CSS is powerful even scoped: `url()` loads remote
assets, attribute-selector tricks can exfiltrate, styling can enable clickjacking. `access css
fields` is closer to a **developer** capability than an editorial one — grant to trusted authors
only, not all authenticated users.