<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Audio Player renders audio fields with a configurable player — skins, playlists, colour palettes and an equalizer display.

---

Browsers ship an audio element, and it looks like a browser control: functional, unstyleable, different in every browser. For a music site, a podcast, an oral history archive or a language-learning resource, the player is part of the presentation, and a consistent themeable one is worth having.

This formatter provides that, with playlist support so a set of files plays as a sequence rather than as separate controls, and visual configuration so the player matches the site.

Two things belong in any audio player deployment. **Keyboard and screen reader access** — custom players routinely lose what the native element gives for free, so check that play, pause, seek and volume are reachable by keyboard and labelled. A visitor who cannot operate the player cannot access the content, and audio content often has no alternative.

And **a transcript is not optional** for spoken-word audio on a site with accessibility obligations. The player does not provide one; the content model has to. That belongs in the field configuration alongside the audio, and is worth deciding when the content type is designed rather than retrofitted.

Practical note: audio files are large and served from the site, so check what the hosting arrangement is for a substantial archive.

---

- Play audio with a themeable player.
- Present a podcast episode.
- Play a set of files as a playlist.
- Match the player to the site design.
- Show an equalizer display.
- Choose a player skin.
- Set a colour palette for the player.
- Check keyboard operation of the player.
- Ensure controls are labelled for screen readers.
- Provide a transcript alongside audio.
- Design the content type with a transcript field.
- Serve an oral history archive.
- Support language-learning audio.
- Plan hosting for large audio files.
- Replace the browser's default audio element.
