<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Video Embed Spotify (video_embed_spotify) — agent index

**Spotify** provider for **Video Embed Field** — tracks, albums, playlists and **podcast episodes**.
Requires `video_embed_field`. Version **2.0.2**. Core requirement `^10.3 || ^11`.

**Explain the name first:** Video Embed Field's provider architecture is good enough that it gets
used for things that are not video. **Spotify is mostly audio**, and the real use is **podcasts more
often than music** — an organisation publishes to Spotify because that is where listeners are, then
wants each episode on its own page **with show notes, a transcript and links**, because the site is
where the episode is findable, citable and permanent.

**Three things worth attaching:**
1. **A Spotify embed is a third-party request** that reports the visit and sets cookies **before
   anyone presses play** — behind the consent manager, exactly as an analytics tag. **This is the
   case sites most often forget**, because a podcast player does not feel like tracking.
2. **Audio needs a transcript** — a WCAG requirement, and the only way the episode's content becomes
   **searchable**. A podcast page without one is a page **about** an episode rather than a page
   **containing** one.
3. **The platform decides what the embed shows.** Playback for a non-subscriber is limited to a
   preview on some content, so **the page shows different things to different visitors** — worth
   knowing before the embed is the page's main content.
