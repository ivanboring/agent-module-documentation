<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# GDPR One Trust Implementation (gdpr_onetrust) — agent index

Embeds the **OneTrust** consent banner, plus **`onetrust_cookie_blocking`** which holds scripts
back until consent. Depends on core `menu_link_content`. Configure at
`/admin/config/system/gdpr-onetrust`. Version **2.1.0**. Core requirement `^10 || ^11`.

Permission is literally named **`One Trust Access`** — with a space and capitals, unusual for a
machine name, and worth knowing when writing a role's config by hand. It is
`restrict access: TRUE`.

**Consent is two jobs and most implementations only do the first:**
1. show a banner and record the choice (visible);
2. **not load the tracker until the answer is yes** (what actually determines compliance).
   A banner over an analytics script that has already fired collects consent for something that
   already happened. **The blocking submodule is the part worth having.**

**Verify rather than assume:**
- **Which scripts are actually blocked.** Anything a theme or another module attaches through
  Drupal's own asset system is not governed by the blocker unless deliberately wired in.
- **Caching.** A consent decision is per-visitor; a page cached with the script tag in it serves
  that script to everyone.

Context: OneTrust is the enterprise product here. Organisations that have bought it already have a
legal team, cookie register and scanning schedule built around it, and expect Drupal to slot in.
