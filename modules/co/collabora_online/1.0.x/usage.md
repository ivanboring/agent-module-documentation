<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Collabora Online integrates Collabora Online for document viewing and editing.

---

Collabora Online integrates **Collabora Online** — the LibreOffice-based online document suite — for
**in-browser viewing and editing** of documents (via the WOPI protocol), with a `collabora_online_group`
submodule. It depends on core Media and the **Key** module, provides its own permissions, in the Collabora
Online package.

Use it to view/edit office documents in the browser. It is a document-editing/integration feature. Security is
important here: the Drupal side acts as the **WOPI host**, so it must issue and **validate access tokens** so
the Collabora (CODE) server can only open documents the requesting user is allowed to access (a WOPI host that
doesn't bind tokens to document + user access is a document-disclosure risk). The Collabora **server URL and
any shared secret/key** are handled via the **Key module** (store as secrets), and the CODE server ↔ Drupal
connection should be **HTTPS**. Its permissions gate who can view/edit. Configure the Collabora server, key and
document access carefully.

---

- View/edit documents in the browser.
- Integrate Collabora Online (LibreOffice).
- Use the WOPI protocol.
- Depend on core Media and Key.
- Act as the WOPI host.
- Provide its own permissions.
- Issue and VALIDATE WOPI access tokens.
- Bind tokens to document + user access.
- Handle server URL/secret via the Key module.
- Use HTTPS between CODE and Drupal.
- Gate who can view/edit.
- Configure the server, key and access.
- Handle Collabora Online.
- Edit documents.
- Configure the integration.
- View office files.
- Handle the WOPI host.
- Secure document access.
- Store the key securely.
- Provide document editing.
