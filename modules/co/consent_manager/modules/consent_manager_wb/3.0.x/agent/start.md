# consentmanager Whistleblowing Tool (consent_manager_wb) — agent index

consent_manager submodule that embeds a consentmanager.net whistleblowing report form via the generic
`consent_manager` block. Plugin `wb` (block-enabled). Depends on `consent_manager`. Config
`consent_manager_wb.settings` at `/admin/config/consent-manager/wb` (permission `administer consent
manager settings`, restrict access).

Rendered as a block — place the "Whistleblowing Tool" block. See the parent plugin type at
[../../../../3.0.x/agent/plugins/plugin.md](../../../../3.0.x/agent/plugins/plugin.md).

Key facts:
- Plugin `src/Plugin/ConsentManager/Wb.php`, `CODE = <div id="whistleblower"></div><script async
  src="https://@host/delivery/whistleblowerform.php?wbid=@codeid&type=script"></script>`.
- Config keys: `codeid` (required), `host` (optional, default `delivery.consentmanager.net`,
  hostname-validated). `getCode()` FALSE without Code-ID.
- Output via generic block deriver `consent_manager:wb`; cache tag `consent_manager_wb`.
