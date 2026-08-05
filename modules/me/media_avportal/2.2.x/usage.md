<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Media AV Portal makes the European Commission's Audiovisual Portal a media source in Drupal, so official EU photos and videos can be referenced from the media library instead of being downloaded and re-uploaded.

---

The AV Portal is the Commission's audiovisual archive, and institutional EU sites are frequently required to use it as the canonical source for official imagery rather than keeping local copies. This module makes that practical. `AvPortalClient` (behind `AvPortalClientInterface`, built by `AvPortalClientFactory`) talks to the portal's API, `AvPortalResource` models a returned item, `src/StreamWrapper` registers a stream wrapper so portal assets can be addressed like files, `src/Plugin` supplies the media source and field formatters, and `AvPortalMediaUpdater` plus `src/Commands` provide Drush-driven refreshing of stored metadata — which matters, because a remote resource's title, description or availability can change after it was referenced. `css/avportal_video.formatter.css` styles the video output. The only Drupal dependency is core `media`, with core `^10 || ^11`. The module comes out of the EU institutional Drupal ecosystem (OpenEuropa), which is worth knowing when judging fit: it is well maintained for that context and narrow by design — the AV Portal specifically, not a general remote-media integration.

---

- Reference official EU photos and videos from the media library.
- Avoid downloading and re-uploading Commission imagery.
- Keep AV Portal metadata current with a Drush command.
- Embed an AV Portal video in an article.
- Comply with a requirement to use official sources.
- Show AV Portal photos in a gallery.
- Reduce local storage for institutional media.
- Address portal assets through a stream wrapper.
- Style AV Portal video output.
- Reference a video that the Commission later updates.
- Build an EU institutional site's media library.
- Combine AV Portal media with local uploads.
- Refresh stored titles and descriptions in bulk.
- Attribute media to its official source.
- Support multilingual media metadata.
- Keep an archive reference rather than a copy.
- Use the portal as a media source in Layout Builder.
- Reduce rights-clearance risk by using official assets.
