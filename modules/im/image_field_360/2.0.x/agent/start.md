<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Image Field 360 (image_field_360) — agent index

Field **formatter** rendering an image field as an interactive **360° panorama** (equirectangular
projection). Version **2.0.2**. Core requirement `^10 || ^11`.

**Why a formatter is the right shape:** the image stays an ordinary image field, replaceable like
any other, and the panorama is a **display decision** rather than a special content type.

**Three practical points:**
1. **The image must actually be equirectangular**, and is typically **several thousand pixels wide
   and several megabytes**. Image styles, lazy loading and a poster frame matter more here than for
   ordinary images.
2. **It is a canvas-based interaction**, so it needs a **keyboard path** and a **text alternative**.
   A panorama explorable only by dragging is unavailable to keyboard users; alt text describing the
   scene is the minimum.
3. **Mobile performance is the practical limit.** A large texture on a mid-range phone is slow to
   load and warm to hold — **one panorama per page** is a reasonable rule; a gallery of them is not.
