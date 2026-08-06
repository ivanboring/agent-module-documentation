<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Advertising provides a system for defining, placing and serving adverts on a Drupal site.

---

Running adverts on a site is more than putting a script in a region. Ads need to be defined as entities, targeted to sections or audiences, placed in slots, rotated, and — if they are sold rather than bought from a network — counted and reported on. A module that models all of that is a different thing from an ad network snippet.

The release is **11.0.0-alpha12**, which is worth stating plainly: an alpha, on a module whose version number tracks core rather than its own maturity.

**Three things belong in any advertising deployment, and none of them is the module's to solve.**

Ad networks are third-party scripts with page-modification capability and cookie-based tracking, so on an EU-facing site they need consent gating, and "the ad module" does not change that — see `usercentrics` and `consent_mode`.

Ads are the largest performance cost on most content sites: third-party scripts, synchronous loads, layout shift as slots fill. If Core Web Vitals matter, the ad implementation is where the budget goes.

And where ads are *sold* rather than networked, the counts become commercial data — impressions and clicks that someone is invoiced against — which makes their integrity and their access controls a business concern rather than an analytics one.

---

- Define adverts as entities.
- Place ads in page slots.
- Target ads to a section.
- Rotate a set of adverts.
- Count impressions and clicks.
- Report on ad performance.
- Sell advertising directly.
- Gate ad scripts behind consent.
- Document ad cookies in a privacy notice.
- Measure the performance cost of ads.
- Reduce layout shift from ad slots.
- Protect impression counts as commercial data.
- Restrict who can read ad reports.
- Evaluate an alpha before production use.
- Plan advertising on a content site.
