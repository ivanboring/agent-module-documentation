<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Field Help Text gives one screen for editing the description text on every field across every bundle, instead of opening each field's settings form one at a time.

---

Help text is the cheapest editorial documentation a site has and the most neglected, because improving it means visiting `/admin/structure/types/manage/{type}/fields/{field}` once per field — dozens of page loads to fix wording that takes seconds to write. This module collapses that into a bulk UI: a landing page at `/admin/structure/fieldhelptext` and a per-bundle form at `/admin/structure/fieldhelptext/by-bundle/{entity_type}/{bundle}`, with `entity_type` and `bundle` resolved through dedicated param converters in `src/ParamConverter`. Both routes are gated by a single permission, **`use fieldhelptext`**, which is the interesting design decision: help text lives in field configuration, so editing it would normally require `administer node fields` or equivalent — permissions that also allow adding, changing and deleting fields. By carving out a narrow permission for the description alone, the module lets a content designer or technical writer improve guidance without being given the ability to alter the data model. Core requirement is `^10.3 || ^11`, with no dependencies.

---

- Improve help text across a whole content type at once.
- Let a technical writer edit field guidance safely.
- Fix inconsistent field descriptions.
- Document a bundle's fields for editors.
- Reduce clicks when reviewing help text.
- Give content designers a narrow permission.
- Audit which fields have no help text.
- Standardise wording across bundles.
- Onboard editors with better field guidance.
- Update guidance after a workflow change.
- Reduce editor questions about a field's purpose.
- Review help text as part of a content audit.
- Translate guidance more consistently.
- Improve accessibility of form guidance.
- Apply a style guide to field descriptions.
- Fix typos across many fields quickly.
- Add examples to complex fields.
- Keep documentation next to the field it describes.
