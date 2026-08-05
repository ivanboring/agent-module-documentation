<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Schema.org Medical Entity adds the medical branch of Schema.org — conditions, drugs, procedures, studies, physicians, anatomical structures and more — to Schema Metatag's JSON-LD output, across eighteen submodules.

---

Schema.org's medical vocabulary is unusually large because health information is unusually structured: a condition has signs, causes, risk factors and treatments; a drug has an active ingredient, a dosage schedule, contraindications and interactions; a procedure has a preparation, a followup and a body location. Search engines use that structure, and health queries are among the most heavily curated result types there are — so a hospital, a clinic, a patient-information charity or a medical publisher gets real benefit from describing content properly rather than hoping it is understood from prose. The submodule-per-type structure is what makes this practical: a site enables `schema_medical_condition` and `schema_drug` and leaves the other sixteen alone. Version **8.x-3.1** on `^9 || ^10 || ^11`, built on Schema Metatag, which owns the JSON-LD assembly and the token replacement while each type module contributes vocabulary. Two things belong in any conversation about medical structured data. **Accuracy is a duty of care rather than an SEO detail** — markup asserting a dosage, a contraindication or an indication is a machine-readable clinical claim, and a mis-mapped field is a wrong claim published under the organisation's name. And **medical content is regulated in most jurisdictions**, so what may be said about a drug or a treatment is governed by rules that apply to the structured data exactly as they apply to the page, and clinical review of the mapping is the same work as clinical review of the text.

---

- Mark up a medical condition page.
- Describe a drug's active ingredient.
- Structure a procedure's information.
- Publish a clinical study's details.
- Mark up a physician's profile.
- Describe anatomical structures.
- Improve health content's search presentation.
- Support a hospital's website.
- Describe a treatment's indications.
- Publish patient information properly.
- Mark up a symptom checker's entries.
- Describe a medical device.
- Support a clinic's service pages.
- Publish a drug information leaflet.
- Describe a medical test.
- Support a health charity's content.
- Mark up a medical guideline.
- Describe risk factors structurally.
