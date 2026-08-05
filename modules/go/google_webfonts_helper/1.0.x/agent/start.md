<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Google Webfonts Helper (google_webfonts_helper) — agent index

Downloads Google Fonts and serves them locally. `google_webfont` config entities at
`/admin/config/system/google-webfonts-helper`, permission `administer google_webfonts_helper`.
Uses `symfony/finder`. Core requirement `^9 || ^10 || ^11`.
**Release is 8.x-1.0-alpha14 — alpha.**

Key facts:
- **The driver is legal, not technical.** A 2022 German court ruling held that embedding Google
  Fonts from Google's servers transmits the visitor's IP to a third country without consent, in
  breach of GDPR; a wave of claims followed and many European organisations now require
  self-hosting as policy. That is usually why this module appears in a requirements list.
- Self-hosting also **removes the need to gate fonts behind a consent manager** — a font loaded
  from the site's own domain is not a third-party request.
- **Performance argument has changed too:** browser cache partitioning removed the cross-site
  reuse that made font CDNs attractive, so self-hosting is now generally faster as well.
- **Deployment consideration:** font files are downloaded to the filesystem. Either commit them or
  re-fetch per environment — a config export alone will not carry the files.
- Font definitions are **config entities**, so the choices export with `drush cex`.
