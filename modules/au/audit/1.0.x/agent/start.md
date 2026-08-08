<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Audit — agent index

Framework + many submodules to **audit/analyze a Drupal site** — security, SEO, performance, database,
entities, fields, views, modules, updates, PHPStan/PHPCS/PHPUnit, Twig, etc. (`audit_all` aggregates).
Config at `audit.settings`; provides **Drush commands** + permissions. Version **1.0.11**. Core
`^10.2||^11||^12`.

Governance/QA tool — reads state to report (changes nothing). **Restrict report access** — security/
status output reveals sensitive config/weaknesses.
