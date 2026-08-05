<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Vocabulary Condition (vocabulary_condition) — agent index

Condition plugins testing the page's taxonomy context — vocabulary, specific terms, and **term
descendants**. Depends on core `taxonomy`.
Core requirement `^10.3 || ^11 || ^12` (declares Drupal 12).

Key facts:
- **Descendant support is the distinguishing feature.** A condition set on a parent term keeps
  applying as children are added — where a term-id list breaks on every new term and a path
  pattern breaks when aliases change.
- Ordinary condition plugins, so they work anywhere conditions are consumed: block layout,
  Context, Page Manager, custom code via `plugin.manager.condition`.
- **Two standing cautions for any visibility condition:**
  - it decides what is **shown**, not what a user may **access** — never use it as an access
    control;
  - a response that varies on it needs the matching **cache context**, or the internal page cache
    serves one visitor's variant to the next.
- Whole module: `src/Plugin/Condition/`, `config/schema`. No routes or permissions.
- Compare `request_data_conditions` (wave 58), which does the same for cookies/headers/query
  parameters.
