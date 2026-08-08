<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Audit provides a framework and many submodules for auditing and analyzing Drupal sites across dimensions like security, SEO, performance, code quality, entities and more.

---

Audit provides a framework for auditing and analyzing Drupal sites, with a large set of submodules
each covering a dimension — security, SEO, performance, database, entities, fields, views, modules,
updates, PHPStan/PHPCS/PHPUnit, Twig, images, i18n, complexity, duplication, watchdog and more (an
`audit_all` aggregates them). It produces reports about the site's state to guide reviews,
optimization and cleanup. It is configured at `audit.settings`, provides its own permissions and Drush
commands.

Use it to systematically assess a site — a governance/QA tool for developers and administrators. It
reads site state to build reports (it analyzes, it does not change the site). Access to the audit
reports is permission-gated; restrict it, since audit output (especially the security/status
dimensions) can reveal sensitive configuration and weaknesses. Run the relevant sub-audits via the UI
or Drush.

---

- Audit a Drupal site across dimensions.
- Analyze security, SEO and performance.
- Run code-quality audits (PHPStan/PHPCS).
- Audit entities, fields and views.
- Aggregate audits with audit_all.
- Configure at audit.settings.
- Provide Drush commands.
- Provide its own permissions.
- Guide reviews and cleanup.
- Read site state for reports.
- Analyze, not change, the site.
- Restrict access to audit reports.
- Mind sensitive audit output.
- Assess site health.
- Audit modules and updates.
- Check i18n and Twig.
- Report on complexity/duplication.
- Support governance/QA.
- Run sub-audits via UI or Drush.
- Systematically review a site.
