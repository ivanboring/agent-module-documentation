<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Config Terms (config_terms) — agent index

Vocabularies and terms as **configuration entities** (`config_terms_vocab`,
`config_terms_term`). Core requirement `^10.6 || ^11.0`. Submodule: `config_terms_views`.
Admin at `/admin/structure/config-terms`.

Key facts:
- **They are not taxonomy terms.** Anything expecting a `taxonomy_term` entity — most contrib
  term integrations, term reference fields, taxonomy views, pathauto term patterns — will not
  work with them. Say this before recommending it; it is the decisive constraint.
- What you gain: the list exports with `drush cex`, deploys with `cim`, is reviewable in a diff,
  and has identical IDs on every environment.
- What you lose: revisions, content translation, and the taxonomy ecosystem.
- Permissions: `administer config terms` declared, **plus per-vocabulary permissions generated
  at runtime** by a `permission_callbacks:` entry pointing at
  `ConfigTermsPermissions::permissions`. Read the class, not just the YAML.
- Term creation uses **`_entity_create_access: 'config_terms_term:{config_terms_vocab}'`** — a
  correctly scoped create check rather than a flat permission.
- `config_terms_views` is needed for any Views listing of these terms.
