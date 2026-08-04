# consentmanager Privacy Policy Generator (consent_manager_pcp) — agent index

consent_manager submodule that embeds a consentmanager.net-generated privacy policy via the generic
`consent_manager` block. Plugin `pcp` (block-enabled). Depends on `consent_manager`. Config
`consent_manager_pcp.settings` at `/admin/config/consent-manager/psp` (permission `administer consent
manager settings`, restrict access).

Rendered as a block — place the "Privacy Policy Generator" block. See the parent plugin type at
[../../../../3.0.x/agent/plugins/plugin.md](../../../../3.0.x/agent/plugins/plugin.md).

Key facts:
- Plugin `src/Plugin/ConsentManager/Pcp.php`, `CODE = <div class="cmppolicy@codeid
  cmpstyleroot"></div><script src="https://@host/delivery/pcpinfo.php?cdid=@codeid&format=simple&lang=automatic"
  async></script>`.
- Config keys: `codeid` (required), `host` (optional, default `delivery.consentmanager.net`,
  hostname-validated). `getCode()` FALSE without Code-ID.
- Note: route path is `/admin/config/consent-manager/psp` (vendor typo), block deriver
  `consent_manager:pcp`; cache tag `consent_manager_pcp`.
