<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
FAPI Validation provides Form API Validation.

---

FAPI Validation provides a **declarative validation layer for Form API** — letting developers attach
reusable validators (email, numeric, length, regex, etc.) to form elements declaratively, instead of writing
custom `#element_validate` callbacks. It ships an example submodule, provides its own permissions, in the
Development package.

Use it to validate forms with less boilerplate. It is a developer/Form API feature. Security note: it improves
input **validation** ergonomics, which is defensively useful — but remember validation is **not sanitization**;
always **escape output** and use safe APIs regardless of validation. It has no access-control role beyond its
permission. Use its validators in your forms.

---

- Validate Form API forms declaratively.
- Attach reusable validators.
- Cover email/numeric/length/regex.
- Ship an example submodule.
- Serve developers.
- Reduce validation boilerplate.
- Remember validation is not sanitization.
- Escape output regardless.
- Have no access-control role beyond permission.
- Use its validators.
- Handle form validation.
- Validate inputs.
- Configure validators.
- Handle the layer.
- Add validators.
- Configure validation.
- Handle Form API.
- Validate forms.
- Use validators.
- Provide form validation.
