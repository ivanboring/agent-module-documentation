Submodule of Campaign Monitor that adds newsletter opt-in to the Drupal user **registration** form, so new users can subscribe to Campaign Monitor lists as they sign up.

---

The module implements `hook_form_user_register_form_alter()` to inject a `campaignmonitor_subscribe` opt-in
checkbox plus, depending on `campaignmonitor_registration.settings`, either a single list's subscribe fields
(name + custom fields, built by the parent's `singleSubscribeForm()`) or a checkbox list of all lists flagged
for registration display. On submit, if the opt-in box is checked, it reassembles the (Drupal-flattened) custom
fields and hands off to the parent's `CampaignMonitorSubscriptionManager::subscribeSubmitHandler()`, which
subscribes the new account's email to the selected list(s). It also alters the per-list settings form
(`hook_form_campaignmonitor_list_settings_form_alter`) to add a "Display list on registration page" checkbox so
admins choose which lists appear at registration. An admin form lives at
`admin/config/services/campaignmonitor/registration` (perm `administer campaignmonitor`). A `restrict access:
TRUE` permission `access campaignmonitor registration` also exists. Requires the parent `campaignmonitor` module.

---

- Let users subscribe to a newsletter while creating their account.
- Add a single-list opt-in (with name/custom fields) to the registration form.
- Add a multi-list checkbox selector to the registration form.
- Choose per list whether it appears on the registration page.
- Show list descriptions next to each registration opt-in checkbox.
- Conditionally require name/custom fields only when the opt-in box is checked.
- Customise the opt-in checkbox label text via config.
- Reuse the parent module's list settings and custom-field configuration on the register form.
- Subscribe the new account's email to Campaign Monitor immediately on registration.
- Combine with cron queueing (parent setting) so signups queue rather than call the API inline.
- Present a "Would you like to subscribe to newsletters?" prompt at signup.
- Gate registration opt-in behaviour behind the `access campaignmonitor registration` permission.
- Keep newsletter signup and account creation in a single step for the user.
- Drive marketing list growth from new user registrations.
- Support both name and Campaign Monitor custom fields at registration time.
