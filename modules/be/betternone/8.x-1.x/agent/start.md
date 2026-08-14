<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Better None Widget Option (betternone) — agent index
**Customises the '- None -' empty option on options/select field widgets.**

- **Version:** 8.x-1.x  •  **Core:** ^8.7.7 || ^9 || ^10 || ^11
- **Hooks:** `options_list_alter`, `field_widget_third_party_settings_form`, `field_widget_settings_summary_alter`
- **Class:** `BetterNoneAlterer` applied to any `OptionsWidgetBase` widget
- **Config:** stored as widget third-party settings in the entity form display; no routes/permissions/services.
- **Security:** no routes, no endpoints — pure form-display alter. No security findings.