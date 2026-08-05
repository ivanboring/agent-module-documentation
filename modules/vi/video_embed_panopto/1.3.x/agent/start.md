<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Video Embed Panopto (video_embed_panopto) — agent index

**Panopto** provider plugin for Video Embed Field. Depends on `video_embed_field`.
Core requirement `^8 || ^9 || ^10 || ^11`.

Key facts:
- Whole module: `src/Plugin/` (one provider plugin), `.info.yml`, `LICENSE.txt`. No routes,
  permissions or configuration.
- **The consideration is access, not code.** Panopto content is frequently restricted to
  authenticated members of an institution, so an embed that works for a signed-in staff member may
  render nothing for an anonymous visitor. That is Panopto's access control, not Drupal's —
  establish which folders are public before assuming embeds will display for the intended
  audience.
- All formatter and thumbnail behaviour comes from Video Embed Field; debug there first.
- Narrow audience by design: higher education running Drupal with Panopto lecture capture.
