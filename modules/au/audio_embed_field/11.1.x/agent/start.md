<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Audio Embed Field (audio_embed_field) — agent index

Field type for **third-party hosted audio** (SoundCloud and similar): stores a URL, renders a
player and a thumbnail, with **`audio_embed_media_core`** integrating with core's media system.
Depends on core `field` and `image` (the latter for thumbnails). Configure at
`/admin/config/…/audio_embed_field`. Version **11.1.1** — the version tracks **core's major**
rather than the usual contrib scheme, a deliberate and unusual signal.
Core requirement `^10.3 || ^11`.

Architecture mirrors `video_embed_field`: a **provider plugin per platform**.

**The media integration matters more than it sounds.** Audio is usually **episodic** — a podcast
series, a lecture archive, a set of interviews — and content arriving in sequence needs to be
referenceable, listable and searchable, not pasted into a body field.

**Three things to attach:**
1. **A third-party embed is a consent question.** The player sets cookies and reports the play to
   its host — behind the consent manager, exactly as an analytics tag.
2. **Audio needs a transcript.** A text alternative is a **WCAG** requirement for pre-recorded
   audio, and it is the only way the content becomes **searchable** — usually what the site
   actually wanted.
3. **Provider plugins are fragile.** A changed embed format or oEmbed endpoint breaks the plugin
   until someone updates it. Check the release date against current platform behaviour.
