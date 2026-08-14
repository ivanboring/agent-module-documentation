<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Alive5 embeds the Alive5 live-chat JavaScript widget on a Drupal site and controls which pages it loads on, entirely from the admin UI.

The `Alive5WidgetManager` service decides per-request whether to attach the widget script, evaluating configurable display rules (path matching, admin-route exclusion, role/audience) so the decision stays cache-safe. Configuration lives at `/admin/config/system/alive5` behind the `administer alive5` permission (restricted). No theme, template, or code changes are required, and the only outbound element is the third-party Alive5 script whose address is admin-configured.

Use it to add live chat/support to selected pages, exclude admin screens, and target the widget to specific audiences without touching templates.
---
Embeds the Alive5 live-chat widget with admin-configurable, cache-safe page display rules.
---
- Add the Alive5 live-chat widget to a site with no template edits
- Enter the Alive5 widget ID from the admin UI
- Show the chat widget only on selected paths
- Exclude admin routes from the chat widget
- Restrict the widget to specific user roles / audiences
- Keep widget display decisions cache-safe
- Disable the widget site-wide without uninstalling
- Configure the third-party script URL that is loaded
- Load chat only on high-intent pages (contact, pricing)
- Hide chat on legal / policy pages
- Roll out live chat to logged-in users only
- Toggle the widget per environment via config
- Provide support chat on landing pages
- Manage the widget entirely from Configuration → System → Alive5
- Export the widget configuration with config management
- Remove the widget cleanly on uninstall
