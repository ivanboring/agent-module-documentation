<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Entity Reference Modal (entity_reference_modal) — agent index

Create or edit a **referenced entity in a modal** from a reference field. Depends on core `field`.
Core requirement `^10 || ^11`.

Key facts:
- **Two things to test rather than assume:**
  1. **Access** — an editor permitted to *reference* a term is not necessarily permitted to
     *create* one. Verify the modal honours create access for the target type/bundle.
  2. **Validation and save order** — what happens when the modal saves and the parent form then
     fails validation, or when the parent is abandoned after a target was created. Implementations
     of this pattern differ exactly here, and orphaned targets are the usual symptom.
- Positioned between plain autocomplete (target must already exist) and **Inline Entity Form**
  (embeds the whole target form, changing save semantics substantially).
