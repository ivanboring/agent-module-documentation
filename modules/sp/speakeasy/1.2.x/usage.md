<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Speakeasy reads page content aloud using the browser's built-in Speech Synthesis API, with settings per site and per user.

---

Using the browser's own speech synthesis rather than a cloud service is the design decision that defines this module, and it is a good one. Nothing is sent anywhere: the text is spoken by the visitor's device, with the voices their operating system provides. That means no per-character billing, no third-party processing of page content, no cookies and no consent question — which is a striking contrast with `elevenlabs` in wave 83, where every rendering is a billed API call.

The trade is quality and consistency. System voices vary from good to robotic across platforms, and a visitor on an older device gets whatever it has. For a read-aloud convenience that is an acceptable trade; for narration meant to be listened to at length, it is not.

**Be clear about what this is and is not, because the distinction matters.** A read-aloud button helps people who find reading tiring, are reading in a second language, or are multitasking — a real and underserved group. It is **not** a substitute for accessibility: someone using a screen reader already has speech, and far better integrated speech than a page-level button provides. A site that adds a read-aloud widget and considers accessibility handled has done the opposite of the work.

The per-user preferences route (`/user/speakeasy/preferences`, gated by `manage speakeasy user preferences`) lets a visitor choose voice and rate, which is what makes it usable rather than a novelty — default synthesis settings suit almost nobody.

---

- Read page content aloud in the browser.
- Avoid sending content to a cloud service.
- Avoid per-character text-to-speech billing.
- Help readers who find reading tiring.
- Support readers in a second language.
- Let a visitor choose a voice.
- Let a visitor set the speech rate.
- Store per-user speech preferences.
- Avoid a consent question for TTS.
- Recognise this is not a screen reader substitute.
- Avoid treating read-aloud as accessibility done.
- Accept variable system voice quality.
- Compare with a cloud TTS provider.
- Restrict who administers the settings.
- Test on several operating systems.
