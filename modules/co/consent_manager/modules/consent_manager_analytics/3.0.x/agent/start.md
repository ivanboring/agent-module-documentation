# consentmanager Analytics (consent_manager_analytics) — agent index

consent_manager submodule injecting the consentmanager.net "trackless" (cookieless) analytics script
into `page_bottom` on every non-admin page. Plugin `analytics` (`has_block: FALSE`). Depends on
`consent_manager`. Config `consent_manager_analytics.settings` at
`/admin/config/consent-manager/analytics` (permission `administer consent manager settings`, restrict
access).

No separate solution doc needed — see the parent plugin type at
[../../../../3.0.x/agent/plugins/plugin.md](../../../../3.0.x/agent/plugins/plugin.md).

Key facts:
- Plugin `src/Plugin/ConsentManager/Analytics.php`, `CODE = <script
  src="https://@host/trackless/delivery/@codeid.js" async></script>` (`@host` default
  `delivery.consentmanager.net`).
- Config keys: `codeid` (required), `host` (optional, hostname-validated). `getCode()` returns FALSE
  without a Code-ID.
- Injected by `consent_manager_analytics_preprocess_html()` → `page_bottom`, cache tag
  `consent_manager_analytics`; skips admin routes.
- `hook_install` sets `consent_manager_cmp` weight = 100.
