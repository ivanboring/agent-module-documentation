<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Collabora Online — agent index

Integrates **Collabora Online (LibreOffice-based)** for in-browser document viewing/editing via **WOPI**
(`collabora_online_group` submodule). Depends on core `media`, `key`. Provides permissions. Version
**0.9.0-beta13**. Core `^10||^11`.

Document-editing/integration — Drupal is the **WOPI host**: it must **validate access tokens** bound to
document + user access (else document disclosure); server URL/secret via the **Key module** (secrets), HTTPS
CODE↔Drupal. Permissions gate view/edit.
