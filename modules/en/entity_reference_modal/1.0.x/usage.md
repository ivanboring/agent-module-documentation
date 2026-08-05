<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Entity Reference Modal lets an editor create or edit a referenced entity in a modal without leaving the form they are filling in.

---

The autocomplete on a reference field assumes the target already exists. When it does not — a new author, a new organisation, a new tag — the editor has to abandon the form, navigate to create the target, and come back to a form that may have lost their work. The alternatives each have a cost: Inline Entity Form embeds the whole target form and changes the save semantics substantially; opening a new tab loses the connection between the two. A modal is the middle path, keeping the parent form intact while the target is created. This module supplies it, depending on core `field` and targeting `^10 || ^11`. Two things determine whether it behaves well. **Access** for creating the referenced entity must still be checked — an editor who may reference a term is not necessarily permitted to create one, and the modal should respect that rather than assume. And **validation and save order** need testing: what happens when the modal saves but the parent form later fails validation, or when the parent is abandoned after a target was created, is exactly where implementations of this pattern differ.

---

- Create a referenced entity without leaving the form.
- Add a new author while writing an article.
- Edit a referenced term in place.
- Avoid losing form state.
- Reduce navigation during authoring.
- Create a tag on the fly.
- Edit an organisation record inline.
- Improve a reference-heavy content type.
- Avoid Inline Entity Form's weight.
- Keep the parent form intact.
- Speed up content entry.
- Reduce editor frustration.
- Create a referenced media item.
- Support a data-entry workflow.
- Fix a typo in a referenced entity.
- Reduce abandoned forms.
- Support editors on complex content types.
- Create related content in context.
