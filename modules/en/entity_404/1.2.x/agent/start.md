<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Entity 404 — agent index

Makes a content entity's **canonical page return 404 (not found)** when the entity fails configured
checks (hide entities as not-found; 404 vs 403 avoids confirming existence). Version **1.2.0** (branch
`1.2.x`). Core `^10.1 || ^11 || ^12`. Provides one permission. No dependencies.

Access-adjacent — governs the **rendered page response**, **not** real entity access control (the entity
still exists / may be reachable via other routes, APIs, or listings). Pair with proper access control.

## Mechanism

- An event subscriber (`EntityAccessSubscriber::onRouteAlter`, `RoutingEvents::ALTER`) adds the access
  requirement `_entity_404: 'TRUE'` to every content-entity **canonical** route whose default is not an
  entity form (so it skips form-as-canonical routes, e.g. some media).
- Two tagged access checks answer `_entity_404`:
  - **`HasFullView`** — forbids (`No full view`) when the entity type/bundle has no `full` view-mode
    display configured.
  - **`HasTranslation`** — forbids (`Translation does not exist`) when content translation is enabled for
    the bundle and no translation exists for the current content language or its fallback candidates.
    Skips (allows) when the content-language module is absent, the entity language is undefined/not
    applicable, or translation is not enabled for the bundle.
- A forbidden result's reason is prefixed `Entity 404: `. `EntityAccessSubscriber::on403` catches the
  resulting 403 exception, and when the message carries that prefix it replaces it with a
  `NotFoundHttpException` (404). Requirement is additive — core's own `_entity_access` view check still
  applies, so this never grants access, only withholds a page.

## Settings

`entity_404.settings` (config, schema provided). Two booleans toggle the checks:

- `no_full_view` — enable the "must have a full view" check.
- `no_translation` — enable the "must be translated" check.

Form: `SettingsForm` (`ConfigFormBase`) at `/admin/config/system/entity-404`, route
`entity_404.admin.settings`, permission **`configure entity 404`**. Uses `#config_target`.

## Supporting pieces

- **`PathValidator`** decorates core `path.validator`; it toggles the `HasTranslation` check **off**
  during `isValid()` / `getUrlIfValid()` so path validation (e.g. menu/link checking, node-translation
  creation) is not blocked by the translation check.
- **`LanguageHooks`** implements `hook_language_fallback_candidates_alter` (ordered first); during the
  `entity_404_has_translation` operation it narrows fallback candidates to the requested langcode plus
  `LANGCODE_NOT_SPECIFIED`, so the translation check only accepts a real match.
- **`EntityFormHooks`** (`hook_form_alter`) appends a submit handler to content-entity forms that
  redirects to the **edit form** after save when the entity's canonical URL is not accessible (avoids
  landing the author on a 404 they just triggered).

## What 1.2.x changed vs 1.1.x

- **Drupal 12 support** — `core_version_requirement` now `^10.1 || ^11 || ^12` (was `^10 || ^11`).
- **Fallback-language support** in the translation check — `HasTranslation` now walks language fallback
  candidates (via the new `LanguageHooks` alter) instead of only the exact content language, so an entity
  reachable through a configured fallback translation is no longer 404'd.
- Hook implementations migrated to OOP `#[Hook]` / `#[LegacyHook]` attribute classes.

See `../1.1.x/` for the prior version. `data.json` for metadata, `usage.md` for use cases.
