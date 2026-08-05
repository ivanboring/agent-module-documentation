<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Varbase SEO bundles the SEO configuration of the Varbase distribution: metatag defaults, structured-data and sitemap wiring, and the module weighting that makes those pieces cooperate, so a Varbase site gets a working SEO baseline without hand-assembling it.

---

The module is a configuration and integration layer rather than a feature of its own. Its `.info.yml` carries an unusual `set_weight_after` list — `metatag`, `metatag_facebook`, `metatag_google_plus`, `metatag_hreflang`, `metatag_mobile`, `metatag_open_graph`, `metatag_twitter_cards` — which forces this module to run **after** every metatag submodule so its defaults and alters win rather than being overwritten. Around that it ties together the usual Varbase SEO stack: Metatag defaults per entity type, Schema.org metatag output, XML sitemap generation and Yoast-style content analysis for editors. Its core constraint is notably tight — **`~11.4.0`**, i.e. Drupal 11.4.x only, not `^11` — which reflects Varbase pinning its distribution to a specific core minor; expect the constraint to move with each Varbase release and to block core upgrades until it does.

---

- Give a Varbase site a working SEO baseline on install.
- Ship metatag defaults for every content type.
- Emit Open Graph and Twitter card tags consistently.
- Add Schema.org structured data to content.
- Generate an XML sitemap without manual configuration.
- Give editors inline SEO analysis while writing.
- Ensure SEO defaults load after all metatag submodules.
- Keep SEO configuration exportable with the site.
- Standardise SEO across several Varbase builds.
- Provide hreflang tags on multilingual sites.
- Configure canonical URL behaviour centrally.
- Reduce SEO setup time on a new project.
- Align a site with an agency's SEO conventions.
- Keep metatag weighting correct after module installs.
- Support social sharing previews out of the box.
- Provide mobile-specific meta tags.
- Give marketing teams predictable metadata.
- Audit which SEO modules a Varbase site relies on.
- Roll SEO defaults out across a multisite estate.
- Serve as a reference SEO configuration for non-Varbase sites.
