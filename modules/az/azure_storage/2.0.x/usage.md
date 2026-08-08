<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Azure Storage Integration integrates Azure Storage with Drupal, storing/serving files in Azure Blob Storage.

---

Azure Storage Integration lets Drupal store and serve files in Azure Storage (Azure Blob Storage) —
via a stream wrapper — so managed files/images can live in Azure rather than local disk, useful for
scalable/offloaded storage and multi-instance deployments. It is configured at `azure_storage.settings_form`
and provides its own permissions.

Use it to offload file storage to Azure. The security-relevant point is credentials: it authenticates to
Azure Storage with an account key/connection string — store that as a secret (never in plaintext config or
the webroot), and configure container access (public vs private blob access) to match your file-privacy
needs (private files must not be publicly readable in the container). Requests to Azure use TLS (not
disabled). Configure the Azure connection and containers.

---

- Store Drupal files in Azure Storage.
- Serve files from Azure Blob Storage.
- Offload file storage to Azure.
- Use an Azure stream wrapper.
- Configure at azure_storage.settings_form.
- Provide its own permissions.
- Store the Azure account key as a secret.
- Match container access to file privacy.
- Keep private files non-public in the container.
- Support multi-instance file storage.
- Use TLS for Azure (not disabled).
- Configure the Azure connection.
- Handle credentials securely.
- Store image derivatives in Azure.
- Scale file storage.
- Configure containers.
- Authenticate to Azure Storage.
- Avoid credentials in the webroot.
- Offload to the cloud.
- Manage Azure-backed files.
