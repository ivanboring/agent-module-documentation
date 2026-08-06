<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Video Embed Spotify adds Spotify as a provider for Video Embed Field, so a Spotify URL — a track, an album, a playlist or a podcast episode — renders as an embedded player.

---

The name is the first thing to explain: Video Embed Field's provider architecture is good enough that it gets used for things that are not video, and Spotify is mostly audio. That matters for what the module is actually used for, which is podcasts more often than music. An organisation with a podcast publishes it to Spotify because that is where listeners are, and then wants each episode on its own page on the site — with show notes, a transcript, links and the episode embedded — because the site is where the episode is findable, citable and permanent. This supplies the embed half, requiring `video_embed_field`, version **2.0.2** on core `^10.3 || ^11`. Three things worth attaching. **A Spotify embed is a third-party request** that reports the visit and sets cookies before anyone presses play, so it belongs behind the consent manager exactly as an analytics tag does — and this is the case where sites most often forget, because a podcast player does not feel like tracking. **Audio needs a transcript**, which is a WCAG requirement for prerecorded content and, more usefully for a podcast, the only way the episode's content becomes searchable — a podcast page without a transcript is a page about an episode rather than a page containing one. And **the platform decides what the embed shows**: playback for a non-subscriber is limited to a preview on some content, so a page built around an embed shows different things to different visitors, which is worth knowing before the embed is the page's main content.

---

- Embed a podcast episode on its page.
- Add a Spotify player to an article.
- Publish show notes with an episode.
- Embed a playlist on a page.
- Add a track to a review article.
- Reference an album in a listing.
- Build a podcast archive with players.
- Embed an interview episode.
- Add music to an artist profile.
- Publish an episode page with a transcript.
- Embed a curated playlist.
- Add audio to an event page.
- Reference a Spotify show.
- Build a podcast series listing.
- Embed a recorded talk.
- Add a soundtrack to a project page.
- Reference an episode from a news item.
- Support a podcast publishing workflow.
