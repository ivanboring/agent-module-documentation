<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Automatic Alternative Text generates alt text for uploaded images using a vision service — Microsoft Cognitive Services Computer Vision or Alttext.ai — so images arrive described instead of blank.

---

Missing alt text is the single most common accessibility failure on content-managed sites, and it is a workflow problem rather than a knowledge problem: editors uploading twenty images to an article will not write twenty descriptions. Automating a first draft changes the economics. The module abstracts the vision service behind a plugin — `DescribeImageServiceInterface` with `src/Plugin` and a manager — so providers are swappable, `AutoAlterCredentials` handles API credentials, and a settings form at `admin/config/media/auto_alter` sits behind its own `administer Automatic Alternative Text` permission. An **auto_alter_translate** submodule extends generated text to other languages. Requirements are core `image` and a range of `^9 || ^10 || ^11`. Three things belong in any recommendation. Generated alt text is a **draft, not a decision**: vision services describe what is in a picture, while good alt text conveys why the image is there, and an image used decoratively should have empty alt rather than a description of it. The service is billed per image, so the permission is a spending control. And the image is sent to a third party, which is a data-flow question for any site handling sensitive or unpublished imagery.

---

- Generate a first-draft alt text on upload.
- Reduce images published with no description.
- Improve accessibility on an image-heavy site.
- Give editors a starting point to edit.
- Backfill descriptions for a media library.
- Meet an accessibility audit requirement.
- Describe images in several languages.
- Swap vision providers without changing workflow.
- Reduce the cost of accessibility remediation.
- Prompt editors with a suggestion.
- Support editors who skip alt text.
- Describe photographs for a news site.
- Improve image search indexing.
- Add descriptions during a bulk import.
- Restrict generation to specific roles.
- Compare Azure and Alttext.ai output.
- Translate generated descriptions.
- Reduce manual work in an accessibility push.
