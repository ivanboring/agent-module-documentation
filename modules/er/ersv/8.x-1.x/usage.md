<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
ERSV provides an EntityReference selection plugin (`ersv`) that decouples the two jobs a normal selection handler does: presenting the list of choosable entities and validating what was actually submitted.

---

In core, one selection handler both narrows the options offered in a widget and validates the saved reference against the same criteria. ERSV lets you configure a separate *selection* handler and *validation* handler on a reference field: the selection plugin controls what the user can pick (e.g. a filtered, AJAX-dependent subset), while the validation plugin decides what is ultimately acceptable (e.g. a broader or different rule). It implements `SelectionWithAutocreateInterface`, so autocreate is delegated as well, and it integrates with the `ajax_dependency` module (a hard dependency) so the offered options can react to other form values.

This is a field-configuration tool: you set it as the reference method on an entity reference field's settings, then configure the nested selection and validation handlers there. It exposes no routes, permissions or services and stores no separate data — all behaviour is driven by the field's configuration and evaluated at form-build and validation time. Use it when the set of options a user should *see* legitimately differs from the set a value is *validated* against.
---
- Offer a filtered subset of entities while validating against a wider set.
- Separate the "what can be picked" rule from the "what is valid" rule.
- Make selectable options depend on another field via ajax_dependency.
- Use different selection vs validation handlers on one reference field.
- Configure ERSV as the reference method in field settings.
- Allow autocreate through a decoupled selection handler.
- Restrict visible options without changing validation constraints.
- Build cascading/dependent entity reference dropdowns.
- Validate submitted references with a custom or broader handler.
- Reuse core selection handlers as the underlying selection plugin.
- Reuse core selection handlers as the underlying validation plugin.
- Apply distinct handler settings to selection and validation.
- Prevent invalid picks even when options are dynamically filtered.
- Support entity reference fields whose options change per form state.
- Configure target bundles independently for display vs validation.
- Combine with ajax_dependency to react to sibling form inputs.
- Avoid custom selection-plugin code for split select/validate needs.
- Test the plugin via the bundled functional AdminPageTest.
