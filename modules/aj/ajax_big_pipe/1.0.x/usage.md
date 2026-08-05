<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
AJAX BigPipe extends core's BigPipe technique to AJAX responses, so the personalised parts of a page delivered by an AJAX request stream in rather than holding up the whole reply.

---

Core's BigPipe is one of Drupal's better performance ideas: the cacheable shell of a page is sent immediately, the personalised fragments — the user menu, the cart count, anything that varies per visitor — are replaced by placeholders, and each is streamed in as it is rendered. The visitor sees content quickly instead of waiting for the slowest component. Core applies that to ordinary page responses, and this extends the same treatment to **AJAX** responses, which matter increasingly as more of a page is loaded after the initial request — a Views AJAX pager, a dialog, an off-canvas panel, a decoupled fragment fetch. It depends on core `big_pipe` and `rest`, version **1.0.8** on `^9 || ^10 || ^11`. Three things to be clear about with any BigPipe-family module. **Placeholders are a correctness mechanism as well as a speed one** — a fragment that is auto-placeholdered because it varies per user must actually declare that variance in its cache contexts, and a fragment with wrong cache metadata is served to the wrong person, which is a disclosure rather than a slow page. **The gain is real but conditional**: streaming needs the whole response path to not buffer, so a reverse proxy, an output filter or a compression layer that waits for the complete body removes the benefit silently. And it changes the shape of a response, so anything downstream that parses AJAX replies should be tested rather than assumed.

---

- Stream personalised parts of an AJAX response.
- Speed up a Views AJAX pager.
- Improve dialog load time.
- Apply BigPipe to off-canvas panels.
- Reduce time to first content.
- Improve perceived performance.
- Stream a cart summary.
- Load a personalised block progressively.
- Improve an AJAX-heavy interface.
- Reduce blocking on a slow fragment.
- Improve dashboard responsiveness.
- Stream search results into a page.
- Support a progressively decoupled front end.
- Reduce waiting on a personalised menu.
- Improve a logged-in user's experience.
- Stream a comment thread.
- Speed up a filtered listing.
- Extend core BigPipe's reach.
