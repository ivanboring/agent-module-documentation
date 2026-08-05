<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Schema.org Medical Entity (schema_medical_entity) — agent index

Adds Schema.org's **medical branch** to **Schema Metatag**'s JSON-LD output, across **18
submodules** — conditions, drugs, drug classes and costs, procedures, studies, tests, devices,
guidelines, physicians, substances, anatomical structures and systems, risk estimators and factors,
causes, medical web pages. Version **8.x-3.1**. Core requirement `^9 || ^10 || ^11`.

**The submodule-per-type structure is what makes it practical** — a site enables
`schema_medical_condition` and `schema_drug` and leaves the other sixteen alone.

Architecture: Schema Metatag owns JSON-LD assembly and token replacement; each type module
contributes vocabulary.

**Two things belong in any conversation about medical structured data:**
1. **Accuracy is a duty of care, not an SEO detail.** Markup asserting a **dosage, a
   contraindication or an indication** is a machine-readable **clinical claim** — a mis-mapped field
   is a wrong claim published under the organisation's name.
2. **Medical content is regulated in most jurisdictions.** What may be said about a drug or
   treatment governs the structured data exactly as it governs the page. **Clinical review of the
   mapping is the same work as clinical review of the text.**
