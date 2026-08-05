<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
BaguetteBox is an image field formatter that opens images in a lightbox, using the BaguetteBox JavaScript library.

---

The lightbox is one of the most-implemented features on the web and Drupal has a long list of modules for it — Colorbox, PhotoSwipe, Magnific and others, each wrapping a different library, each with a formatter and a set of options. What distinguishes them now is size and behaviour rather than features. BaguetteBox is a deliberately small library with **no dependencies** — no jQuery — built around swipe gestures and touch, which makes it a sensible default for a site that wants a gallery without adding a framework to the page for it. This module supplies the Drupal side as a formatter, depending on core `image`; version **4.0.0** with a core requirement of **`^11.3 || ^12`**, which is unusually tight — Drupal 11.3 or later only, and reaching into a major that does not exist yet. The point worth checking, and the one that separates lightboxes, is **keyboard and screen-reader behaviour**: a correct implementation traps focus inside the dialog while it is open, returns focus to the thumbnail that opened it on close, closes on Escape, and announces itself as a dialog. A lightbox that does none of that is a keyboard trap in the literal accessibility sense. The other consideration is what is loaded: a gallery that fetches full-size images eagerly can be several megabytes before anyone opens anything, so confirm that the large image is fetched on demand.

---

- Open gallery images in a lightbox.
- Add swipe navigation to a gallery.
- Show a full-size image on click.
- Build a photo gallery from an image field.
- Add a lightbox without jQuery.
- Keep page weight low.
- Show product photography large.
- Support touch navigation.
- Add a lightbox to a media field.
- Browse images with the keyboard.
- Display an exhibition's images.
- Show a portfolio's work.
- Add captions to lightbox images.
- Support a mobile-first gallery.
- Show press images at full size.
- Build a simple image viewer.
- Replace a heavier lightbox module.
- Show a property listing's photos.
