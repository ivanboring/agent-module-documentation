<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Image Field 360 renders an image field as an interactive 360° panorama that the visitor can drag to look around.

---

Equirectangular photographs — the flat, distorted images a 360° camera or a phone's photosphere mode produces — are meaningless as flat images and immersive when projected onto a sphere. The uses are specific and each is a case where a flat photograph genuinely fails: a property listing where the visitor wants to stand in the room, a hotel showing a suite, a museum offering a gallery view, a venue selling a space, a construction site recorded at a point in time. This module makes it a **field formatter**, which is the right shape — the image is an ordinary image field, replaceable like any other, and the panorama is a display decision rather than a special content type. Version **2.0.2** on core `^10 || ^11`, in the Fields package. Three practical points. **The image must actually be equirectangular** and is typically large — a usable 360 photograph is several thousand pixels wide and several megabytes, so image styles, lazy loading and a poster frame matter more here than for ordinary images. **It is a canvas-based interaction**, so it needs a keyboard path and a text alternative: a panorama that can only be explored by dragging is unavailable to keyboard users, and alt text describing the scene is the minimum. And **performance on mobile** is the practical limit — a large texture on a mid-range phone is slow to load and warm to hold, so a single panorama per page is a reasonable rule and a gallery of them is not.

---

- Show a room in 360 degrees.
- Present a property listing immersively.
- Show a hotel suite panorama.
- Offer a museum gallery view.
- Present a venue's space.
- Record a construction site view.
- Show a landscape panorama.
- Present a classroom or facility.
- Offer a virtual tour stop.
- Show a vehicle interior.
- Present a restaurant's dining room.
- Show a conference venue.
- Present a heritage site.
- Offer an immersive product view.
- Show a workshop or studio.
- Present a campus location.
- Show a stadium's view from a seat.
- Offer a real-estate walkthrough image.
