<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# A11Y Project Checklist (a11yproject_checklist) — agent index
**Provides a Checklist API checklist of A11Y Project accessibility best practices with WCAG references and handbook links.**

- **Version:** 1.0.x
- **Core:** ^9 || ^10 || ^11
- **Depends on:** checklistapi
- **Configure / checklist route:** `/admin/config/development/a11y-project-checklist` (`checklistapi.checklists.a11yproject_checklist`)
- **Service:** `a11yproject_checklist_service` (`A11yProjectChecklist::getA11YProjectChecklist()`) — fetches item data via `http_client`.
- **Hooks:** `hook_checklistapi_checklist_info()`, `hook_theme()`, `hook_theme_suggestions_alter()`.

**Security:** No custom routes or permissions; access is gated by Checklist API's permission on an admin config path. No mutating or anonymous endpoints. Item data is fetched over outbound HTTP at build time (failures logged).
