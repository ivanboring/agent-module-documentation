<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Google Webfonts Helper downloads Google Fonts and serves them from the site's own server, so no visitor request reaches Google's font CDN.

---

This exists for a legal reason more than a technical one. A German court found in 2022 that embedding Google Fonts from Google's servers transmits the visitor's IP address to a third country without consent, in breach of the GDPR, and a wave of claims followed; many European organisations now require self-hosting as policy. Self-hosting by hand means downloading the right weights and subsets, writing the `@font-face` rules and keeping them updated — tedious enough that it gets deferred. This module makes each font a `google_webfont` configuration entity managed at `/admin/config/system/google-webfonts-helper` under `administer google_webfonts_helper`, handling the download and the CSS. It uses `symfony/finder` and depends on nothing else, with core `^9 || ^10 || ^11`; the release is **8.x-1.0-alpha14**. Two notes: fonts are downloaded to the filesystem, so the deployment needs to either carry them or re-fetch on each environment; and self-hosting is also faster than the CDN in most modern browsers, since cache partitioning removed the cross-site reuse that made third-party font CDNs attractive in the first place.

---

- Self-host Google Fonts for GDPR compliance.
- Stop visitor IPs reaching Google's CDN.
- Meet a European data-protection requirement.
- Avoid a consent banner for fonts.
- Download font files automatically.
- Generate @font-face CSS.
- Manage fonts as configuration entities.
- Improve font loading performance.
- Choose specific weights and subsets.
- Remove a third-party request from every page.
- Support a public-sector privacy policy.
- Update a self-hosted font easily.
- Reduce external dependencies.
- Serve fonts from the site's own domain.
- Avoid legal risk from embedded fonts.
- Simplify a font self-hosting workflow.
- Keep font choices in version control.
- Support an offline or air-gapped site.
