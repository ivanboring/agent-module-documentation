# consentmanager Data Subject Rights (consent_manager_dsr) — agent index

consent_manager submodule that embeds a consentmanager.net DSR (Data Subject Rights) form via the
generic `consent_manager` block. Plugin `dsr` (block-enabled, default `has_block: TRUE`). Depends on
`consent_manager`. Config `consent_manager_dsr.settings` at `/admin/config/consent-manager/dsr`
(permission `administer consent manager settings`, restrict access).

Rendered as a block — place the "Data Subject Rights" block on a page. See the parent plugin type at
[../../../../3.0.x/agent/plugins/plugin.md](../../../../3.0.x/agent/plugins/plugin.md).

Key facts:
- Plugin `src/Plugin/ConsentManager/Dsr.php`, `CODE = <div id="dsar"></div><script async
  src="https://@host/delivery/dsarform.php?dsarid=@codeid&type=script"></script>`.
- Config keys: `codeid` (required), `host` (optional, default `delivery.consentmanager.net`,
  hostname-validated). `getCode()` FALSE without Code-ID.
- Output via generic block deriver `consent_manager:dsr`; cache tag `consent_manager_dsr`.
