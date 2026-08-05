<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
EPT Slideshow adds a ready-made Slideshow paragraph type built on Flexslider, with slides selected through the media library.

---

Part of the Extra Paragraph Types family, which supplies pre-built paragraph types over a shared `ept_core` providing common settings such as spacing, background and container width. Slideshow is the carousel one: an editor adds the paragraph, picks media items, and gets a slider. It depends on core `media` and `media_library` as well as `ept_core` and `paragraphs`, version **2.0.0**, core requirement `^10.1 || ^11 || ^12`. **A practical installation note**: it requires the `media.type.image` configuration to exist, so on a minimal profile with no image media type the install fails with an unmet configuration dependency — create the media type first. Beyond the mechanics, a carousel deserves a question that rarely gets asked: **usage data consistently shows very low engagement with slides after the first**, and the pattern is a recurring accessibility problem — auto-advancing content moves away while it is being read, it needs pause control, keyboard operation and correct announcement to be usable, and on mobile it pushes real content below the fold. Where a carousel is chosen for genuine reasons — an editorial rotation of featured stories, a gallery the visitor drives — it is fine. Where it exists because three departments each wanted the top of the homepage, the honest answer is that everything after slide one is close to unseen, and it is worth saying so before building it.

---

- Add a slideshow to a page.
- Show a rotating set of featured items.
- Build an image gallery slider.
- Show product photography in a carousel.
- Add a hero slideshow.
- Rotate featured stories.
- Show testimonials in sequence.
- Pick slides from the media library.
- Add a slider without custom code.
- Build a partner logo carousel.
- Show a project's images.
- Add a campaign slideshow.
- Present a photo essay.
- Show event highlights.
- Add a swipeable image set.
- Give editors a ready-made slider.
- Build a case-study carousel.
- Show a sequence of announcements.
