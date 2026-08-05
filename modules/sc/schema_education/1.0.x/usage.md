<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Schema.org Education adds the `EducationalOccupationalProgram` type to Schema Metatag's JSON-LD output, so a university or college can describe its degree programmes in the structured form search engines read.

---

Structured data is how a search engine learns what a page *is* rather than what words it contains, and for education it has direct commercial consequence: Google surfaces course and programme information in dedicated result formats, and a programme page that describes itself properly can appear with duration, credential, provider and start dates attached rather than as a plain blue link. `EducationalOccupationalProgram` is the Schema.org type for exactly this — a course of study leading to a qualification — with properties covering the credential awarded, the time to complete, the occupational category it prepares for and the terms of admission. This module supplies those as Schema Metatag properties, which is the right architecture: Schema Metatag owns the JSON-LD assembly, the token replacement and the per-bundle configuration, and each type module contributes its own vocabulary. Version **1.0.1** on `^9 || ^10 || ^11`, requiring `schema_metatag`; note the declared `php: 7.2.0`, a floor far below anything a Drupal 11 site runs, which is simply stale metadata. The work is in the mapping, not the installation: each property must be pointed at the field that genuinely holds it, and a programme marked up with the wrong credential or an out-of-date start date is worse than one with no markup at all.

---

- Mark up a degree programme.
- Describe a course for search engines.
- Add structured data to a university site.
- Show programme duration in search results.
- Describe the credential awarded.
- Improve visibility for a college course.
- Add JSON-LD for education content.
- Support a programme finder's SEO.
- Describe admission requirements.
- Mark up an apprenticeship.
- Improve rich result eligibility.
- Describe a vocational programme.
- Add occupational category data.
- Support a prospectus site.
- Map programme fields to Schema.org.
- Describe start dates for a course.
- Meet an SEO agency's requirement.
- Standardise programme metadata.
