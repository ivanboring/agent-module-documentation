<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
DrupalFit provides a modern API for generating comprehensive site reports.

---

DrupalFit provides a **modern API for generating comprehensive site fitness/health reports** — running
pluggable checks (performance, security posture, config, HTTPS enforcement, etc.) and producing a report, with
a `drupalfit_report_export` submodule. It depends on core System and Update, provides its own permissions, in
the DrupalFit package.

Use it to audit a site's health/best-practice posture. It is an administration/audit tool. Its report can
reveal **detailed site/config information** (versions, settings, findings), so gate its permission to trusted
admins and treat exported reports as sensitive. (Note: one of its checks probes the site's own HTTP→HTTPS
redirect with certificate verification disabled — that is an intentional self-diagnostic of the site's own
endpoint, not an authenticated request, so it is not a data-exposure issue.) It has no access-control role
beyond its permission. Run the audit.

---

- Generate a site fitness/health report.
- Run pluggable checks.
- Cover perf/security/config/HTTPS.
- Depend on core System and Update.
- Provide a report-export submodule.
- Provide its own permissions.
- KNOW the report reveals detailed site info.
- Gate the permission to trusted admins.
- Treat exported reports as sensitive.
- Note the HTTPS self-check disables verify intentionally.
- Have no access-control role beyond permission.
- Run the audit.
- Handle the audit.
- Audit the site.
- Configure the report.
- Check the site.
- Handle the checks.
- Report health.
- Restrict the report.
- Provide site auditing.
