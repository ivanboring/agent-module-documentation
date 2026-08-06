<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Audio Player (audio_player) — agent index

Field formatter for audio: **skins, playlists, colour palettes, equalizer**.
Version **1.1.4**. Core `^10 || ^11`. Depends on `image`, `field`, `media`.

**Two things to raise for any custom audio player:**

1. **Keyboard and screen reader access** — custom players routinely lose what the native `<audio>`
   element gives free. Verify play, pause, seek and volume are reachable and labelled. A visitor
   who cannot operate the player cannot access the content, and audio often has no alternative.
2. **A transcript is not optional** for spoken-word audio under most accessibility obligations. The
   player does not provide one — the **content model** has to, which is a content-type design
   decision, not a retrofit.