<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Fluid UI – Infusion (fluidui) — agent index

Integrates the **Fluid Infusion** accessibility/preferences framework (IDRC). No module
dependencies. **Core requirement `^10.5 || ^11.2`** — recent minors only, unusually narrow.
Settings at `/admin/config/fluidui/adminsettings`.

Key facts:
- **Permission is `access administration pages`**, not `administer site configuration` — looser
  than comparable modules, and this form changes site-wide front-end behaviour. Worth tightening
  or flagging in an access review. (Same pattern noted for `whatsapp_bubble`, wave 60.)
- Infusion's distinguishing idea is a **preferences framework** — a visitor's settings persist and
  can apply across participating sites — rather than a fixed set of overlay buttons. That research
  grounding (Inclusive Design Research Centre) is the reason to prefer it over an ad-hoc widget.
- **State the limitation, as with `accessibility_menu` (wave 60):** a preferences layer helps
  visitors who want to adjust presentation. It does not deliver WCAG conformance — semantic
  markup, keyboard operability, focus management and the design's own contrast are what is
  measured.
- Surface: `src/Hook/`, `src/Plugin/`, `src/Form/FluidConfigForm.php`, `css/fluid.css`.
