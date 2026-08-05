<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# BaguetteBox (baguettebox) — agent index

Image field **formatter** opening images in a **BaguetteBox** lightbox. Depends on core `image`.
Version **4.0.0**. **Core requirement `^11.3 || ^12`** — unusually tight: Drupal 11.3+ only, and
reaching into a major that does not exist yet.

**What distinguishes it from Colorbox / PhotoSwipe / Magnific:** BaguetteBox is a deliberately
small library with **no dependencies — no jQuery** — built around swipe and touch. A sensible
default for a site that wants a gallery without adding a framework for it.

**The thing to check, and what separates good lightboxes from bad ones — accessibility.** A correct
implementation:
- **traps focus** inside the dialog while open,
- **returns focus** to the thumbnail that opened it on close,
- closes on **Escape**,
- announces itself as a **dialog**.
One that does none of these is a keyboard trap in the literal accessibility sense.

Also confirm the **full-size image is fetched on demand** — a gallery that loads originals eagerly
can be several megabytes before anyone opens anything.
