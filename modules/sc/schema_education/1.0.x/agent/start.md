<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Schema.org Education (schema_education) — agent index

Adds the **`EducationalOccupationalProgram`** type to **Schema Metatag**'s JSON-LD output.
Requires `schema_metatag`. Version **1.0.1**. Core requirement `^9 || ^10 || ^11`.
Declares `php: 7.2.0` — stale metadata, far below anything a Drupal 11 site runs.

Architecture is correct: **Schema Metatag** owns JSON-LD assembly, token replacement and per-bundle
configuration; each type module contributes vocabulary. This one contributes programme properties
— credential awarded, time to complete, occupational category, admission terms.

**Why it earns its place on an education site:** Google surfaces course and programme information
in dedicated result formats. A properly described programme page can appear with duration,
credential, provider and start dates attached instead of as a plain blue link.

**The work is the mapping, not the installation.** Each property must point at the field that
genuinely holds it. A programme marked up with the wrong credential or a stale start date is worse
than one with no markup at all.
