<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
SVG Upload Sanitizer strips scripts and other active content out of SVG files as they are uploaded, closing one of the more reliable stored-XSS routes into a Drupal site.

---

SVG is XML, and XML that browsers execute: an `.svg` file can carry `<script>`, event handlers, `<foreignObject>` with embedded HTML, and external references. Serve one from the same origin as the site — which a public file field does — and opening it runs the attacker's JavaScript with the site's cookies. This is why allowing SVG uploads without sanitisation is a well-known mistake, and why `enshrined/svg-sanitize` exists: an allow-list-based cleaner that removes everything not on its list of safe elements and attributes. This module hooks that library into Drupal's upload path — `src/HookHandler` and `src/Helper` with `svg_upload_sanitizer.services.yml` — so the file is cleaned before it is stored. There is no configuration, no permission and no route; it depends on core `file`, PHP 8.1+ and core `^10 || ^11`. Sanitising on upload rather than on output is the right choice, because the stored file is what will eventually be served. Note that it operates on uploads through Drupal, so files placed on disk by other means are unaffected, and that the strongest additional control remains serving user-uploaded SVG from a separate domain.

---

- Allow SVG uploads without stored XSS risk.
- Strip scripts from an uploaded logo.
- Remove event handlers from vector artwork.
- Sanitise SVGs in a media library.
- Let editors upload icons safely.
- Reduce risk on a public file field.
- Remove external references from an SVG.
- Meet a penetration-test remediation item.
- Clean SVGs at the point of upload.
- Support an icon-upload workflow.
- Protect a site with anonymous uploads.
- Complement extension and MIME validation.
- Allow designers to supply SVG assets.
- Reduce reliance on manual SVG review.
- Sanitise SVGs uploaded via a webform.
- Keep SVG support without disabling it wholesale.
- Harden a media library for untrusted contributors.
- Clean SVGs imported during a migration.
