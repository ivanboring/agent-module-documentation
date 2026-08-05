<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Webform Simplify hides parts of Webform's administration interface, so an editor sees the few settings they need rather than the full apparatus.

---

Webform is the most capable form builder in any CMS and its interface reflects that: handlers, conditional logic, access per element, submission limits, confirmation types, email tokens, export settings, variants, and a settings screen with a dozen vertical tabs. For the developer who needs all of it that density is the point; for the editor who was asked to change the confirmation message, it is a screen where the right control is hidden among fifty wrong ones, and the likely outcome is either a support request or a setting changed by accident. Reducing what is shown is therefore a real usability intervention rather than cosmetics. Version **1.3.0** on `^8` through `^11`, requiring `webform >= 6.1`, with `configure webform simplify` and a separate `edit any webform settings` permission. **The distinction to keep clear is the one this module makes easy to blur: hiding is not restricting.** A setting removed from the interface is still reachable through the form's configuration export, through a second form display, through `drush config:set`, and through the Webform UI on another site where the module is not enabled — so if the requirement is that an editor *must not* change submission handlers, that is a **permission**, and Webform has its own. Use this to reduce noise for people who are trusted and overwhelmed; use permissions for people who are not trusted. The two are complementary and confusing them produces a site that looks locked down and is not.

---

- Hide advanced Webform settings from editors.
- Simplify the form settings screen.
- Reduce editor confusion in Webform.
- Show only the confirmation settings.
- Hide handler configuration from editors.
- Reduce accidental setting changes.
- Simplify a form builder for a client.
- Hide export settings from content staff.
- Reduce Webform's learning curve.
- Focus editors on relevant options.
- Simplify a survey-building workflow.
- Hide element access settings.
- Reduce support requests about Webform.
- Present a cut-down form interface.
- Hide variants from non-technical users.
- Simplify for occasional form editors.
- Reduce visual noise in Webform admin.
- Support a delegated form-editing role.
