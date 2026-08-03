# Entity Save And Add Another — agent index

Adds a "Save and Add Another" submit button to entity **add** forms; after save it redirects
back to the same add path so editors can keep creating items of that type.

- No config, no permissions, no schema, no services, no Drush — installing enables it.
- `configure` is `null`; nothing to set up.

How it works (all in `entity_save_and_addanother.module`):
- One `hook_form_FORM_ID_alter()` per supported form clones `$form['actions']['submit']` into
  `$form['actions']['entity_save_and_addanother_<type>']`, relabels it "Save and Add Another",
  removes the `destination` query arg, and appends `entity_save_and_addanother_<type>_submit_handler`.
- Each submit handler checks the triggering element id and calls
  `$form_state->setRedirectUrl(Url::fromUserInput($current_path))` to return to the add form.
- The button only shows on the *add* route (each alter matches the current path, e.g. `/node/add/`).

Supported entity add forms (hard-coded, no bundle config needed):
- `node_form` → `/node/add/*`
- `media_form` → `/media/add/*`
- `taxonomy_term_form` → `/admin/structure/taxonomy/manage/<vid>/add`
- `menu_link_content_form` → `/admin/structure/menu/manage/<menu>/add`
- `block_content_form` → `/block/add*`
- `commerce_product_form` → `/product/add/*` (only if Commerce present)

Access: reuses core's submit button and the entity's own create access — no new permission surface.
There are no solution docs beyond this index; the whole module is the file above.
