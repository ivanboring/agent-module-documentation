<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Type Style (type_style) — agent index

Configuration for styling **entity bundles distinctly** — a colour or marker per content type.
Submodules `type_style_example` and **`type_style_moderation`** (the same for workflow states).
Configure at `/admin/config/…/type_style`. Version **8.x-1.2**.
Core requirement `^8 || ^9 || ^10 || ^11`.

**Why it earns its place:** on a site with twenty content types an editor tells them apart
constantly — in the content listing, a reference autocomplete, a moderation queue, search results.
**A label is read; a colour is recognised**, which is why every issue tracker colours ticket types
and every calendar colours event categories. The moderation submodule covers the distinction people
most need at a glance: **draft versus published**.

**Two things determine whether it helps or hinders:**
1. **Colour alone fails a substantial minority.** Around **one in twelve men** has some colour vision
   deficiency, and **red-versus-green** is the pair most often chosen and least often
   distinguishable. A marker needs a **second channel** — label, icon or shape. That is a
   requirement, not a refinement.
2. **A palette needs an owner.** Eight chosen colours make a listing readable; twenty arbitrary ones
   make it noise. The value depends on someone **deciding the set**, not on each new content type
   being given a colour at creation.
