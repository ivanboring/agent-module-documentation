<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Flmngr integrates the Flmngr file manager into CKEditor for browsing and uploading images/files — but the file-manager backend is external (Flmngr's service or a separately-installed server), not a Drupal endpoint.

---

Flmngr is a commercial file-manager product for rich-text editors. This module integrates its CKEditor file/image browser into Drupal. The security-relevant fact, verified: the module ships an EMPTY routing file and no controller — it does not expose a file-manager endpoint within Drupal. The actual browsing/uploading is handled by an external Flmngr backend (Flmngr's hosted service, or a separately-installed Flmngr server component) that the CKEditor plugin talks to. So the file-manager security — who can upload, what extensions are allowed, path handling, storage — lives in that external backend's configuration, not in Drupal, and is not part of this module's attack surface. The considerations are therefore: the Flmngr backend must be configured with appropriate upload restrictions and access control, and the connection (API key/URL to the Flmngr service) is a credential to protect. If using Flmngr's hosted service, uploaded files may reside there (a data-location decision). Configure the external backend's restrictions carefully, since that is where uploads are actually accepted.

---

- Add a file manager to CKEditor.
- Browse and upload files in the editor.
- Integrate Flmngr.
- Configure the external Flmngr backend.
- Set upload restrictions on the backend.
- Protect the Flmngr API credential.
- Understand the backend is external.
- Restrict who can upload.
- Decide where uploaded files reside.
- Configure allowed extensions on the backend.
- Insert images via the file manager.
- Secure the file-manager service.
- Enable when needed.
- Keep disabled otherwise.
- Restrict administration.
- Confirm on your site.
- Test before production.
- Review configuration.
- Pair with related modules.
- Verify theme fit.
- Match your use case.
- Confirm compatibility.