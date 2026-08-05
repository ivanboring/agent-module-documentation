<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Config Terms provides vocabularies and terms as **configuration entities** rather than content, so a controlled list deploys with `drush cim` instead of having to be recreated or migrated on every environment.

---

Drupal's taxonomy terms are content, which is right when editors own them and wrong when developers do. A list of statuses, regions, document types or service categories that code branches on is configuration in everything but storage: it needs to be identical across environments, reviewed in a merge request, and deployed rather than re-entered. Because core terms are content, teams end up with default content modules, migration stubs, or a hand-maintained list of term IDs that differ per environment — a recurring source of "it works on staging" bugs. This module supplies the config-entity equivalent: `config_terms_vocab` and `config_terms_term` entity types with a full admin UI at `/admin/structure/config-terms`, a `config_terms_views` submodule for Views integration, and per-vocabulary permissions generated at runtime by `ConfigTermsPermissions::permissions()` alongside the declared `administer config terms`. Term creation uses `_entity_create_access` scoped to the vocabulary, which is the correct pattern. The trade-off is the mirror of the benefit: config terms are not content, so they have no revisions, no translations through content translation, and nothing that expects a `taxonomy_term` entity — including most contrib term integrations — will work with them.

---

- Deploy a controlled vocabulary with configuration.
- Keep term IDs identical across environments.
- Review a vocabulary change in a merge request.
- Stop recreating reference lists per environment.
- Model statuses that code branches on.
- Give developers ownership of a fixed list.
- Prevent editors changing a controlled list.
- Export vocabularies with `drush cex`.
- Roll back a term change with a config revert.
- List config terms in a view.
- Grant per-vocabulary permissions.
- Ship a vocabulary with an install profile.
- Avoid default-content modules for reference data.
- Keep a service catalogue in version control.
- Standardise a list across a multisite.
- Audit where a term is referenced in config.
- Model document types as configuration.
- Remove environment drift in reference data.
