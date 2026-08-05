<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Audio Embed Field adds a field type for audio hosted elsewhere — paste a SoundCloud or similar URL and get a player, a thumbnail and a media source.

---

It is the audio counterpart to `video_embed_field` and shares its architecture: a provider plugin per platform, a field that stores a URL, formatters that render a player or a thumbnail, and an `audio_embed_media_core` submodule integrating with core's media system so the same URLs become media entities usable in the library and in a WYSIWYG. That last part matters more than it sounds, because audio is usually episodic — a podcast series, a lecture archive, a set of interviews — and content that arrives in sequence needs to be referenceable, listable and searchable rather than pasted into a body field. Version **11.1.1** on core `^10.3 || ^11` — note the version number tracks core's major rather than the usual contrib scheme, which is a deliberate signal and an unusual one. Depends on core `field` and `image`, the image dependency being for thumbnails. Three things to attach. **A third-party embed is a consent question**: the player sets cookies and reports the play to its host, so it belongs behind the consent manager exactly as an analytics tag does. **Audio needs a transcript** — a text alternative is a WCAG requirement for pre-recorded audio, and it is also the only way the content becomes searchable, which is usually the thing the site actually wanted. And **provider plugins are fragile**: when the platform changes its embed format or its oEmbed endpoint the plugin breaks until someone updates it, so check the release date against the platform's current behaviour.

---

- Embed a SoundCloud track in a node.
- Publish a podcast episode.
- Add audio to an article.
- Build a lecture archive.
- Reference audio as a media entity.
- Show an audio thumbnail in a listing.
- Add an interview recording.
- Embed audio in a WYSIWYG.
- Build a podcast series listing.
- Add music to a portfolio.
- Publish a conference recording.
- Show audio in a teaser.
- Support an oral history archive.
- Add an audio description track.
- Publish a radio-style programme.
- Reference audio from several pages.
- Build an audio-led content type.
- Add a recorded reading to a poem.
