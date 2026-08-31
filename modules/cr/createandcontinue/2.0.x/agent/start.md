<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Create and Continue (createandcontinue) — agent index

Adds a **"Save and add another"** button to the node **add** form that saves the node and returns a
fresh empty add form of the same content type. No dependencies, no config, no permissions, no
routes. Version **2.0.0**. Core requirement `^10 || ^11`.

## How it works (source)

The entire module is one procedural file, `createandcontinue.module` (~45 lines):

- `createandcontinue_form_node_form_alter()` — an `hook_form_BASE_FORM_ID_alter()` for the node form.
  It runs on every node form but **guards on the current path containing `/node/add/`**, so the
  button is added on **add forms only**, never on edit forms (despite the `.info.yml` description
  saying "node edit form").
- When the guard passes it **clones the existing** `$form['actions']['submit']` button into a new
  `$form['actions']['createandcontinue']`, relabels it `t('Save and add another')`, and **appends**
  `createandcontinue_submit` to that button's `#submit` array (so the standard node-save submit
  handlers still run first).
- `createandcontinue_submit()` — checks the triggering element id is `edit-createandcontinue`, then
  sets the redirect to the current path with
  `$form_state->setRedirectUrl(Url::fromUserInput(\Drupal::service('path.current')->getPath()))`.
  The path comes from `path.current` (the resolved internal request path, e.g. `/node/add/article`),
  **not** from any query/POST parameter — so the redirect always lands back on the same add form.

The default "Save" button is untouched and keeps core's normal redirect (to the created node).

## Editorial context

**The loop it removes:** fill, save, land on the created node, navigate back to the add form, wait,
fill again. The navigation and page load are **pure overhead once per record**, and losing the form
costs more than the seconds — a person entering data works fastest when the interface does not
change under them.

**Two things worth attaching:**
1. **Confirmation still matters.** The created node disappears from view immediately, so the status
   message is the **only feedback** — it must name the node and link to it, or a mistake made forty
   times is discovered at the end.
2. **Ask whether an importer would serve better.** The pattern generalises (terms, media, users,
   custom entities usually have no equivalent button), but the module itself covers **nodes only** —
   and a spreadsheet plus a migration beats forty forms whenever the data already exists somewhere.
