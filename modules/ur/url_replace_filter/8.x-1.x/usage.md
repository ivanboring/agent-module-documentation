<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
URL Replace Filter rewrites the base URL of `<img>` and `<a>` elements at render time, so content referring to an old domain resolves against the current one.

---

This is the archetypal migration cleanup. A site moves, or a staging copy is taken, and every image in every body field still points at `https://old.example.org/sites/default/files/...`. The images may even still load, which is worse than if they broke: production is quietly serving assets from a machine that is about to be switched off, and nobody notices until it is. Rewriting the stored HTML is the durable fix and often cannot be done immediately — the content is re-imported from the old system, or the change needs sign-off, or the same database is used in an environment where the old URL is still correct. A render-time filter handles all three: stored content is untouched, output is corrected, and the rule is per text format so different formats can behave differently. Version **8.x-1.2** on core `^10 || ^11`, depending on core `filter` and declaring `php: 8.2`. It is narrower than a general regex filter — it targets `<img>` and `<a>` specifically rather than replacing arbitrary text — and that narrowness is a virtue, because it will not corrupt a code sample or a piece of prose that happens to contain the old domain as text. Two things to check: **filter order**, since this must run where the relevant elements are still present and any HTML-restricting filter has already had its say; and whether the site should be using core's **`base_url`** or a proper content rewrite instead, since a render-time filter is a durable workaround and workarounds outlive the situations that justified them.

---

- Fix image URLs after a domain move.
- Rewrite links to an old site.
- Correct staging copies of content.
- Stop serving assets from a retired host.
- Fix migrated body-field images.
- Point content at the current domain.
- Handle re-imported legacy content.
- Correct URLs per text format.
- Fix a subdirectory-to-root move.
- Rewrite links after a rebrand.
- Support a phased domain migration.
- Fix mixed-content HTTP references.
- Correct a CDN hostname in content.
- Handle content from a shared database.
- Avoid a bulk content update.
- Fix links in imported news archives.
- Support a site consolidation.
- Correct URLs without editing nodes.
