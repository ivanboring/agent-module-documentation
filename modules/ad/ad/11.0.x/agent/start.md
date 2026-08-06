<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Advertising (ad) — agent index

Advert definition, placement, targeting, rotation and reporting.
Version **11.0.0-alpha12** — **alpha**, on a module whose version tracks core rather than its own
maturity. Core `^10 || ^11`.

More than an ad network snippet: ads as entities, slots, targeting, counting.

**Three things belong in any ad deployment, none of them the module's to solve:** network scripts
are third-party page-modifying, cookie-setting code needing **consent gating** (`usercentrics`,
`consent_mode`); ads are usually the **largest performance cost** on a content site (third-party
scripts, layout shift as slots fill); and where ads are **sold**, impression and click counts are
**commercial data** someone is invoiced against — integrity and access matter accordingly.