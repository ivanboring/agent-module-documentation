<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# EPT Video (ept_video) — agent index

Single-video **paragraph type** — remote (YouTube/Vimeo) or local file — with **GLightbox**
providing the overlay player. Requires core `media`, `ept_core`, `paragraphs`, `glightbox` and
`glightbox_media_video`. Version **2.0.0**. Core requirement `^10.1 || ^11 || ^12`.

**Opening in an overlay is the right default** for a page whose layout should not be dictated by a
video's aspect ratio — and it helps with the consent problem below, since the embed can be deferred
until the overlay opens.

**Installation prerequisite, shared with the family:** the referenced **media types must exist**, or
the install fails on an unmet configuration dependency.

**Three things belong in any "add video" conversation:**
1. **A remote video is a third-party request.** The player sets cookies and reports the view
   **before anyone presses play** — behind the consent manager, exactly as an analytics tag.
2. **Video needs captions.** A WCAG requirement for prerecorded content, and the only way the words
   become **searchable**.
3. **Autoplay with sound is blocked by every current browser** and disliked where it is not. If a
   design calls for it, that is a conversation, not a setting.
