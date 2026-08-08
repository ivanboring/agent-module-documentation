<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Deindex Unpublished Files moves an unpublished media entity's file from public to private storage (and restores it on publish), so unpublished files stop being publicly downloadable — real protection, not just search deindexing.

---

A long-standing Drupal gap: unpublishing a media entity hides the media, but the FILE behind it, if stored in public://, remains directly downloadable at its URL — so 'unpublished' content is still fetchable by anyone with the URL. Deindex Unpublished Files closes that. Verified by reading: on media presave, when the media is unpublished and its file is in public://, it MOVES the file to private://unpublishedfiles/ (a private-storage location served through Drupal's access checks, not directly fetchable); on republish it moves the file back to public://. There is also a fallback that renames the file with a .ht_ prefix (which Drupal's default .htaccess denies) where a private move is not possible. So despite the SEO-sounding name, this is real access protection: it makes unpublished media files genuinely inaccessible, not merely de-indexed. Two operational notes: the private:// stream must be configured (a private file path in settings.php) for the move to work, and the .ht_ fallback relies on the web server honouring Drupal's .htaccess (Apache does; nginx needs equivalent rules). Moving files also changes their URI, so confirm references resolve after a publish/unpublish cycle.

---

- Protect unpublished media files.
- Move unpublished files to private.
- Stop public download of unpublished files.
- Close the unpublished-file gap.
- Restore files on republish.
- Configure the private:// stream.
- Rely on private access checks.
- Confirm the .htaccess fallback on your server.
- Make unpublished files inaccessible.
- Verify references after publish cycle.
- Protect draft attachments.
- Serve unpublished files via access.
- Enable when needed.
- Keep disabled otherwise.
- Restrict administration.
- Confirm on your site.
- Test before production.
- Review configuration.
- Pair with related modules.
- Verify theme fit.
- Match your use case.
- Confirm compatibility.