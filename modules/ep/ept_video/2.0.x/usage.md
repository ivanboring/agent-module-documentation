<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
EPT Video adds a paragraph type for a single video — either a remote video such as YouTube or Vimeo, or a locally hosted file — with GLightbox providing the player overlay.

---

Video in a component-built page is one of those requirements that looks trivial and has several decisions inside it: remote or local, inline or lightbox, autoplay or not, poster image or first frame, and what happens on a phone. This supplies a pre-made answer, requiring core `media` alongside `ept_core`, `paragraphs` and the **GLightbox** modules, so the video opens in an overlay rather than playing inline — which is the right default for a page whose layout should not be dictated by a video's aspect ratio. Version **2.0.0**, core requirement `^10.1 || ^11 || ^12`. Note the installation prerequisite shared with the rest of the family: the media types it references must exist, so on a minimal profile the install fails with an unmet configuration dependency until they are created. Three things belong in the conversation whenever video is added. **A remote video is a third-party request** — the player sets cookies and reports the view to YouTube or Vimeo before anyone presses play, so it belongs behind the consent manager exactly as an analytics tag does, and a lightbox helps here because the embed can be deferred until the overlay opens. **Video needs captions**, which is a WCAG requirement for prerecorded content and also the only way the words become searchable. And **autoplay with sound is blocked by every current browser** and disliked where it is not, so if a design calls for it, that is a conversation rather than a setting.

---

- Add a video to a page section.
- Embed a YouTube video in a paragraph.
- Play a video in a lightbox.
- Add a locally hosted video.
- Include a Vimeo video on a landing page.
- Add a product demonstration video.
- Show a testimonial video.
- Embed a training video.
- Add a video with a poster image.
- Defer a video embed until clicked.
- Add video to a component-built page.
- Show a conference recording.
- Add an explainer video to a service page.
- Embed a video in a campaign page.
- Give editors a ready-made video component.
- Show a case-study video.
- Add a video without custom code.
- Include a welcome video.
