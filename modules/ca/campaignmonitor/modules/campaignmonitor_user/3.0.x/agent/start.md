# Campaign Monitor User — agent index

Glue submodule: adds a per-user newsletter subscription-management page on the user profile. Depends on the
parent `campaignmonitor` module. No plugins, no config schema.

Routes (`campaignmonitor_user.routing.yml`):
- `campaignmonitor_user.page` — `/user/{user}/campaignmonitor`, perm `access campaign monitor user`.
  Controller `CampaignMonitorUserController::subscriptionPage()` renders the parent's
  `CampaignMonitorSubscribeForm` seeded with `campaignmonitor_user.settings`. It builds the form for the current
  user (the `{user}` param is not used to load another account's subscription data).
- `campaignmonitor_user.admin` — `admin/config/services/campaignmonitor/user`, perm `administer campaignmonitor`
  (`CampaignMonitorUserAdminForm`).

Config `campaignmonitor_user.settings` defaults: `subscription_heading` ("My Subscriptions"),
`subscription_text` / `list_heading` ("I'm interested in").

Service: `campaignmonitor_user.manager` (`CampaignMonitorUserManager`, extends `CampaignMonitorManager`).

Permission: `access campaign monitor user` (NOT restricted) — access one's own profile subscription page.

Parent docs: [../../../../3.0.x/agent/start.md](../../../../3.0.x/agent/start.md)
