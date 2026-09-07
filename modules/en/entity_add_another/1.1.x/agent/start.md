<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Entity Add Another — agent index

Adds a **"Save and Add Another" button to entity add forms** (return to a fresh add form — speed up bulk
creation). Config at `entity_add_another.settings` (`/admin/config/content/entity_add_another`); provides
permissions. Version **1.1.0**. Core `^10.1 || ^11 || ^12`.

Content-editing/workflow — affects add-form buttons only; creation still governed by normal create access
(the add form is only reachable, and the button only fires, where the user can already create the entity).
No access role beyond permission.

## Mechanism
- OOP hook class `Drupal\entity_add_another\Hook\EntityAddAnotherHooks` (`#[Hook]` attributes; legacy
  `.module` wrappers via `#[LegacyHook]`). Registered in `entity_add_another.services.yml`.
- `hook_form_alter` (ordered after `inline_entity_form`): requires `use entity add another` permission,
  a `ContentEntityFormInterface` on a new `ContentEntityInterface` with op `add`/`edit`/`default`, and the
  `<entity_type>` or `<entity_type>__<bundle>` key present in config `add_another_entities`. It then clones
  the existing `actions.submit` button into `actions.entity_add_another`, relabels it "Save and Add Another",
  and appends `entityAddAnotherSubmitHandler`.
- Submit handler `submitEntityAddAnother()`: removes the `destination` query param, then redirects to the
  current internal path plus the remaining query string via `Url::fromUserInput()` — i.e. back to the same
  add form. Internal-only (path from `path.current`, always leading `/`).
- `hook_module_implements_alter` reorders `entity_add_another`'s `form_alter` to run right after
  `inline_entity_form` so the button lands on the correct actions element.

## Config & permissions
- Config object `entity_add_another.add_another_entities` → `add_another_entities` (sequence of strings:
  `<entity_type>` or `<entity_type>__<bundle>`). Default `[]` (button appears nowhere until enabled).
- Settings form `EntityAddAnotherSettingsForm` (`ConfigFormBase`) lists all content entity types + bundles
  as checkboxes.
- Permissions: `administer entity add another` (settings page), `use entity add another` (see/use the button).

See `../../1.0.x/` for the previous branch. This branch (1.1.x) refactors hooks to the attribute-based
OOP hook system and drops Drupal 9 (now requires core 10.1+, adds 12).
