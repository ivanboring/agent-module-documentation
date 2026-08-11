<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Microsoft Entra User Sync syncs users between Microsoft Entra ID and Drupal.

---

Microsoft Entra User Sync (entrasync) **syncs Entra ID users into Drupal** — reading users from Microsoft
Entra (Azure AD) via the MS Graph API and provisioning/updating matching Drupal accounts. It stores credentials
via the **Key** module and depends on the MS Graph API module, and provides its own permissions.

Use it to provision users from Entra. It is a directory/identity-integration feature. Security/data handling: it
**calls the Microsoft Graph API** (egress) to read **user directory data (PII)** and creates/updates Drupal
accounts, authenticating with **Entra app credentials stored via the Key module** (secret handling, a positive) —
keep those keys secured (a Graph app credential can read your directory), scope the app's Graph permissions to the
minimum (least privilege), and serve over HTTPS. Note it provisions accounts, so ensure synced users get
appropriate (least-privilege) roles. It has its own permissions. Configure the Entra credentials (via Key).

---

- Sync Entra ID users to Drupal.
- Read users via MS Graph.
- Provision/update Drupal accounts.
- Store credentials via the Key module.
- Depend on the MS Graph API module.
- Serve directory/identity integration.
- Call the MS Graph API (egress) to read user PII.
- Store Entra app credentials via Key (positive) + scope Graph permissions least-privilege.
- Provision accounts with least-privilege roles + HTTPS.
- Have its own permissions.
- Configure the Entra credentials via Key.
- Handle Entra sync.
- Sync users.
- Configure the client.
- Provision accounts.
- Handle the integration.
- Read the directory.
- Update users.
- Secure the credentials via Key.
- Provide Entra user sync.
