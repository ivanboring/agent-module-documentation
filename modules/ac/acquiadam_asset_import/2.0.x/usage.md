<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Acquia DAM Asset Importer imports assets from Acquia DAM into Drupal media.

---

Acquia DAM Asset Importer **bulk-imports assets from Acquia DAM (Widen) into Drupal media** — pulling
digital assets (images/files) from an Acquia DAM account and creating corresponding Drupal media entities, on top
of the Media: Acquia DAM integration. It depends on the media_acquiadam, Token and Views Remote Data modules, in
the Media package.

Use it to bring Acquia DAM assets into Drupal as media. It is a media/integration feature. Security/data
handling: the Acquia DAM **API credentials are configured in the base media_acquiadam module** (which handles
authentication — store them as secrets), and it fetches assets from the **Acquia DAM service** (external egress)
over HTTPS; imported media then follows core media/file access. It has no access-control role. Configure the
Acquia DAM connection (in media_acquiadam) and run the import.

---

- Import Acquia DAM (Widen) assets.
- Create Drupal media from DAM assets.
- Build on Media: Acquia DAM.
- Depend on media_acquiadam/Token/Views Remote Data.
- Serve media integration.
- Bulk-import assets.
- Configure DAM credentials in media_acquiadam (secrets).
- Fetch assets from Acquia DAM (egress) over HTTPS.
- Follow core media/file access for imported media.
- Have no access-control role.
- Configure the connection + run the import.
- Handle DAM import.
- Import assets.
- Configure the import.
- Pull DAM assets.
- Handle the integration.
- Create media.
- Import media.
- Secure the credentials.
- Provide Acquia DAM import.
