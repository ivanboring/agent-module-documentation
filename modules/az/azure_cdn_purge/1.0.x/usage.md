<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Azure CDN Purger integrates with the Purge module to purge/invalidate cached content on Azure CDN.

---

Azure CDN Purger provides a purger plugin for the Purge module that invalidates cached content on
Azure CDN — so when content changes in Drupal, the corresponding cached objects on Azure's CDN are
purged and visitors get fresh content. It depends on the Purge module, is configured at
`azure_cdn_purge.admin_config_form`, and provides its own permissions.

Use it on Azure-hosted sites using Azure CDN in front of Drupal, alongside Purge's queue/processor
setup. The security-relevant point is the Azure credentials it uses to call the CDN purge API — store
them as secrets (never in plaintext config), and scope the credential to the CDN purge operation with
least privilege. It is an integration/performance feature; the CDN connection uses TLS (checked — this
module does not disable verification).

---

- Purge Azure CDN cache from Drupal.
- Invalidate cached content on change.
- Integrate with the Purge module.
- Serve fresh content after edits.
- Depend on the Purge module.
- Configure at the admin config form.
- Store Azure credentials as secrets.
- Scope the credential least-privilege.
- Provide its own permissions.
- Use with Purge queue/processor.
- Call the Azure CDN purge API.
- Not disable TLS (checked).
- Front Drupal with Azure CDN.
- Purge on content update.
- Keep the CDN in sync.
- Invalidate CDN objects.
- Handle CDN credentials securely.
- Configure the Azure connection.
- Support Azure-hosted sites.
- Manage CDN cache invalidation.
