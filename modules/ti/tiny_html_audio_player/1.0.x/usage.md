<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
tiny-player HTML audio player renders an audio field with a compact custom player, built on the Howler audio library.

---

The browser's native `<audio>` element works, is accessible by default, and looks different in every browser — which is fine for a single file on a page and unsatisfying for a site where audio is the content. A site publishing a podcast, an oral-history archive, a language course or a music catalogue wants a player that matches its design and behaves the same everywhere, and that means a custom player driving the audio through JavaScript. This one uses **Howler**, documented earlier in this campaign, which is the sensible choice: it abstracts the Web Audio API with an HTML5 Audio fallback and handles the browsers' quite different autoplay and codec behaviour. Version **1.0.4** on core `^9.3 || ^10 || ^11`. Three things to check with any custom audio player, because replacing a native control means taking on what it provided for free. **Keyboard operation**: play and pause on the space bar, seek with arrow keys, and a focusable control for each — a player operable only by clicking is unusable without a mouse. **Screen-reader state**: the play button's accessible name must change with state, and progress needs to be announced or at least exposed, or the player is a set of unlabelled buttons. And **a transcript is not optional** — a text alternative is a WCAG requirement for prerecorded audio, and it is also the only way the spoken content becomes searchable, which is usually what the site wanted from the audio in the first place.

---

- Play a podcast episode from a field.
- Add a compact audio player to a page.
- Publish an oral history recording.
- Play a language course's audio.
- Add a music sample player.
- Match a player to the site's design.
- Play an interview recording.
- Add audio to an article.
- Publish a lecture recording.
- Play a pronunciation clip.
- Add a consistent player across browsers.
- Publish an audio guide.
- Play a radio programme archive.
- Add audio to a portfolio.
- Publish a recorded reading.
- Play a meditation track.
- Add audio to a course page.
- Publish a conference recording.
