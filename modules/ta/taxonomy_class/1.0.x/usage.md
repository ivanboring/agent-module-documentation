Taxonomy Class adds a "CSS class(es)" base field to every taxonomy term and outputs its value as a class on the rendered term, letting editors style individual terms.

---

The module defines a single string base field, `taxonomy_class`, on the `taxonomy_term` entity type via `hook_entity_base_field_info`. A `hook_form_FORM_ID_alter` on `taxonomy_term_form` groups this field into a collapsible "Taxonomy Class settings" details element in the form's advanced sidebar — but only for users with the `administer taxonomy classes` permission; without it the field is hidden. On the display side, `hook_preprocess_taxonomy_term` (registered under a `hook_preprocess_html`-style comment but actually keyed to `taxonomy_term`) reads the field's first value and appends it to `$variables['attributes']['class']`, so the class lands on the term template's wrapper. There is no configuration UI (`configure` is null), no dependencies beyond core, and no config schema (base field values live on each term entity). Only the first value of the field is applied. The class string is placed into the render array's `Attribute` class list, which core escapes on render.

---

- Add a per-term CSS class so editors can style individual taxonomy terms.
- Give category terms brand/color classes (e.g. `cat-news`, `cat-sports`) for themed term pages.
- Attach a utility class to a term to trigger theme-specific layout on its term page.
- Let content editors manage term styling without touching templates or CSS files directly.
- Mark certain terms with a class consumed by custom CSS or JS behaviors.
- Restrict who can set term classes via the `administer taxonomy classes` permission.
- Expose the class field in the term form's advanced (sidebar) group for a tidy edit UI.
- Style vocabulary terms differently based on an editor-assigned class.
- Add icon-font or badge classes to terms for display in term listings.
- Provide hook-free term theming by relying on the auto-added wrapper class.
- Tag terms for A/B or campaign styling via a class value.
- Apply a state/status class (e.g. `is-featured`) to selected terms.
- Drive Views row classes from a term's assigned class (via the field value).
- Keep term-level presentation data on the term entity itself (portable with content).
- Hide the class field entirely from editors who lack the permission.
