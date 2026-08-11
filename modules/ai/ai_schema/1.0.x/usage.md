<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
AI Schema serialises entity/field definitions to compact JSON for consumption by LLMs and tools.

---

AI Schema exports Drupal's entity and field definitions into a compact, machine-readable JSON schema designed for LLM consumption — so an AI agent or external tool can understand the site's content model (bundles, fields, types) without crawling config. It's a building block for AI features that need to reason about structure.

The exported schema describes structure, not content, but still reveals your content model; expose it only where appropriate. It's a developer/API utility with no content or access role of its own. Supports Drupal 10 and 11.

---

- Export entity definitions to JSON.
- Export field definitions to JSON.
- Produce LLM-friendly schema.
- Describe bundles and field types.
- Let AI reason about the content model.
- Feed schema to agents/tools.
- Avoid crawling config for structure.
- Reveal structure (not content).
- Expose the schema appropriately.
- Serve as a building block for AI features.
- Support Drupal 10 and 11.
- Provide machine-readable output.
- Act as a developer/API utility.
- Carry no access role of its own.
- Serialise the site's data model.
- Support function-calling contexts.
- Keep output compact.
- Integrate with AI tooling.
- Describe entity types.
- Generate schema on demand.
