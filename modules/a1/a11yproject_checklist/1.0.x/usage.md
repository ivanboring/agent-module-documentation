<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
A Checklist API checklist that lets site teams track accessibility best practices sourced from The A11Y Project.
---
The module defines a checklist (via `hook_checklistapi_checklist_info()`) at `/admin/config/development/a11y-project-checklist`. The checklist items are built by the `a11yproject_checklist_service` service (`src/Service/A11yProjectChecklist.php`), which fetches the current A11Y Project checklist data over HTTP with the core `http_client` and converts each task into a Checklist API item carrying a title, description, WCAG reference and a link to the relevant handbook page.

It depends on the contrib Checklist API module (`checklistapi`), which stores completion state (who checked what, and when) and renders the save form. This module only supplies the item definitions and a theme override (`form--checklistapi-checklist-form`) plus a tour. There are no custom routes, permissions or write endpoints of its own; access is governed by Checklist API's own permission for the checklist. Setup is simply enabling the module and visiting the checklist page.

Because item data is retrieved from a remote source at build time, a working outbound HTTP connection is needed to populate the list; failures are logged and the list renders empty.
---
- Enable the module alongside Checklist API to get an accessibility checklist.
- Visit `/admin/config/development/a11y-project-checklist` to view the checklist.
- Track completion of A11Y Project accessibility tasks over time.
- Check off individual accessibility tasks as they are completed.
- Record which user completed each task and when via Checklist API.
- Review WCAG references attached to each checklist item.
- Follow handbook links from each task to remediation guidance.
- Use the checklist as an accessibility audit worksheet for a site launch.
- Share progress with stakeholders using Checklist API's percent-complete display.
- Grant editors the Checklist API permission to edit the checklist.
- Take the built-in tour to learn the checklist UI.
- Theme the checklist form using the provided template suggestion.
- Combine with other Checklist API checklists (e.g. SEO) in one admin area.
- Re-fetch the latest A11Y Project tasks by rebuilding caches.
- Use it as an onboarding aid for content authors learning accessibility.
- Export progress as part of an accessibility compliance report.
- Verify semantic markup, color contrast and keyboard tasks against the list.
- Audit media alternatives (alt text, captions) using relevant items.
- Keep an accessibility remediation backlog visible to the team.
- Reset or continue the checklist across releases.