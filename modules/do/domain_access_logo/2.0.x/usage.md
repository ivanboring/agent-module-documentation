<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Domain Access Logo gives each domain in a Domain Access installation its own logo, so a single Drupal site serving several branded hostnames does not have to fake per-domain branding through theme settings or CSS.

---

Domain Access lets one Drupal install serve many domains from shared content, but the site logo is a *theme* setting and themes are not domain-aware — so out of the box every domain shows the same mark. This module attaches a logo upload to each domain record. The whole surface is one settings form at `/admin/config/domain/domain_access_logo`, gated by its own permission `administer domains access logos`, plus a `DomainAccessLogo` service that resolves the current domain's logo at render time and a `links.task`/`links.menu` pair putting it in the Domain admin area. Dependencies are core `file` and `domain`, with composer accepting Domain `^2.0 || ^3.0`. Because it hangs off Domain's own records rather than the theme, the logo follows the domain regardless of which theme is active — and because it is a file upload rather than a theme setting, the images live in the file system and are managed like any other uploaded file.

---

- Show a different logo on each domain of a Domain Access site.
- Brand affiliate sites separately from the main site.
- Avoid duplicating a theme per domain just to change the logo.
- Let a domain administrator upload their own mark.
- Keep per-domain branding out of theme settings.
- Serve regional variants of a brand from one install.
- Give a campaign microdomain its own identity.
- Manage logos alongside the rest of the Domain configuration.
- Switch a domain's logo without a deployment.
- Keep one shared theme across many branded domains.
- Restrict logo uploads to a dedicated permission.
- Support a multi-brand editorial team.
- Roll out a rebrand domain by domain.
- Preview a new logo on a staging domain only.
- Provide fallbacks when a domain has no logo set.
- Manage logo files through Drupal's file system.
- Reduce theme count in a multi-domain build.
- Onboard a new domain with its own branding.
