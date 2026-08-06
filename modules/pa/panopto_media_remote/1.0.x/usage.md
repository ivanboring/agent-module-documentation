<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Panopto Media Remote adds Panopto as a provider for the `media_remote` module, so a lecture-capture recording can be referenced as a media entity by URL.

---

Panopto is lecture capture: universities and training organisations record teaching into it, and the recordings carry the institution's access controls, its retention policy and often its captioning. A Drupal site alongside such a platform needs to reference those recordings rather than hold them — the video is large, it is governed elsewhere, and copying it would duplicate both the storage and the access decision. `media_remote` is the right base for that, because it deliberately stores a URL and renders an embed without pretending to own the asset, unlike a media source that downloads and manages a file. Version **1.0.1** on `^8` through `^11`, requiring `media_remote`. Three things follow from referencing rather than holding. **Access lives with Panopto**, which is the point and the complication: a recording restricted to a course is embedded on a Drupal page that may be public, and what a visitor sees is whatever Panopto decides — so the Drupal page must not imply access it cannot grant, and a page whose only content is an embed the visitor cannot play is a broken page from their point of view. **The embed is a third-party request** carrying a view to Panopto, which for an institutional platform is usually acceptable and still belongs in the privacy notice. And **captions are the accessibility requirement** for recorded teaching, and they live in Panopto rather than in Drupal — so the question of whether a recording is captioned is answered on the platform, and a site publishing links to uncaptioned lectures has an obligation it cannot discharge from its own side.

---

- Embed a Panopto lecture recording.
- Reference lecture capture in a course page.
- Add a recorded seminar to a page.
- Link training recordings from Drupal.
- Reference video governed by the LMS.
- Embed a recorded lecture in an article.
- Add Panopto video to a media library.
- Reference a recording without copying it.
- Support a university's video platform.
- Embed a recorded conference session.
- Add lecture video to a course listing.
- Reference recordings with institutional access.
- Embed a training video from Panopto.
- Support a hybrid teaching site.
- Add a recorded lab demonstration.
- Reference a webinar recording.
- Embed a captioned lecture.
- Support an education media workflow.
