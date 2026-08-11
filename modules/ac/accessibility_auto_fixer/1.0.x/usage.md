<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Accessibility Auto Fixer scans node content against WCAG rules and surfaces the results in an admin dashboard.

---

Accessibility Auto Fixer is a production-oriented accessibility scanner: it walks content, flags WCAG violations (missing alt text, heading order, contrast hints, ARIA gaps), and presents them in a UI dashboard with batch scanning across many nodes and a CI-friendly mode for pipelines. It is aimed at editorial/QA teams who want a repeatable accessibility audit inside Drupal rather than an external tool.

Access is gated by `access accessibility reports` (view findings) and `administer accessibility settings` (configure the scanner). Grant the report permission to editors/QA and the admin permission only to trusted roles. The scanner reads content the running user can see; treat its report pages as authenticated admin UI.

---

- Scan content for WCAG accessibility issues.
- Report findings in a UI dashboard.
- Batch-scan many nodes at once.
- Run in CI pipelines.
- Flag missing image alt text.
- Check heading order.
- Surface ARIA gaps.
- Gate report viewing with `access accessibility reports`.
- Gate configuration with `administer accessibility settings`.
- Give editors/QA a repeatable audit.
- Track accessibility over time.
- Prioritise remediation from the dashboard.
- Requires the core `node` module.
- Target WCAG conformance.
- Support Drupal 10.3+ and 11.
- Integrate accessibility into editorial workflow.
- Export or review results per node.
- Keep scanning inside Drupal (no external tool).
- Restrict admin settings to trusted roles.
- Improve site accessibility posture.
