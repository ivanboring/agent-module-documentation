<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Video Embed Panopto adds Panopto as a provider for Video Embed Field, so a lecture-capture URL pasted into a video field renders as an embedded player.

---

Panopto is the lecture-capture and video-management platform used across a large part of higher education, which makes this a narrow module with a well-defined audience: universities running Drupal that need recorded lectures and seminars embedded in course pages. Video Embed Field's architecture is a provider plugin per platform, and this supplies that one plugin — the module is `src/Plugin`, an info file and a licence, with `video_embed_field` as its only dependency and a wide core range of `^8 || ^9 || ^10 || ^11`. The practical consideration is not the code but the access model: Panopto content is frequently **restricted to authenticated members of an institution**, so an embed that works for a signed-in staff member may show nothing to an anonymous visitor or to someone outside the organisation. That behaviour comes from Panopto's own access control rather than from Drupal, and it is worth establishing which folders are public before assuming embeds will render for the intended audience.

---

- Embed a recorded lecture in a course page.
- Add Panopto to a video field.
- Show a seminar recording on a site.
- Reuse Video Embed Field's formatters.
- Let editors paste a Panopto URL.
- Embed training videos for staff.
- Show a conference recording.
- Keep video hosted on the institutional platform.
- Provide a consistent video field across providers.
- Embed a departmental video library item.
- Show a recorded induction session.
- Support a university's Drupal site.
- Render Panopto alongside YouTube videos.
- Embed a lecture in a student handbook page.
- Keep captions and player features from Panopto.
- Support an education media workflow.
- Show a recorded webinar.
- Add lecture capture without custom code.
