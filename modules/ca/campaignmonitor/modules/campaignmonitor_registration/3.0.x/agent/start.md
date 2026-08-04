# Campaign Monitor Registration — agent index

Glue submodule: adds Campaign Monitor newsletter opt-in to the core **user registration** form. Depends on the
parent `campaignmonitor` module. No plugins, no config schema.

How it works (all in `campaignmonitor_registration.module`):
- `hook_form_user_register_form_alter()` — adds a `campaignmonitor_subscribe` checkbox and, per
  `campaignmonitor_registration.settings` `list` value: `single` → parent's `singleSubscribeForm($config)` fields;
  otherwise a `selection` checkboxes element of lists whose per-list setting `display.registration` is on.
  Appends `campaignmonitor_registration_form_user_register_submit` to the submit handlers.
- Submit handler: if opt-in checked, rebuilds `CustomFields` (un-flattened) and calls the parent
  `campaignmonitor.subscription_manager::subscribeSubmitHandler()` to subscribe the new account's email.
- `hook_form_campaignmonitor_list_settings_form_alter()` — adds a "Display list on registration page" checkbox to
  each list's settings form (saved via `CampaignMonitorManager::setListSettings()`).

Config/permissions:
- Admin form route `campaignmonitor_registration.admin` at `admin/config/services/campaignmonitor/registration`
  (perm `administer campaignmonitor`). Default config `campaignmonitor_registration.settings` ships
  `list_id_text`.
- Permission `access campaignmonitor registration` (`restrict access: TRUE`).

Parent docs: [../../../../3.0.x/agent/start.md](../../../../3.0.x/agent/start.md)
