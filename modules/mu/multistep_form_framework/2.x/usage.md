<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Multistep Form Framework provides a framework for building multi-step (wizard) forms, with an examples submodule.

---

Long forms are better split into steps. Multistep Form Framework provides the machinery for wizard-style multi-step forms, with an `multistep_form_framework_examples` submodule. It is developer infrastructure for form building. No fixed security surface of its own; forms built on it inherit standard Form API validation and access. Because multi-step forms carry state between steps, confirm that per-step data is validated (a later step must not trust an earlier step's data blindly) and that the form's access is enforced at each step, not just the first.

---

- Build a multi-step form.
- Create a form wizard.
- Split a long form into steps.
- Use the framework for wizards.
- See the examples submodule.
- Validate each step's data.
- Enforce access at each step.
- Carry state between steps.
- Build a wizard flow.
- Confirm per-step validation.
- Provide a stepped form.
- Handle multi-step state.
- Enable when needed.
- Keep disabled otherwise.
- Restrict administration.
- Confirm on your site.
- Test before production.
- Review configuration.
- Pair with related modules.
- Verify theme fit.
- Match your use case.
- Confirm compatibility.