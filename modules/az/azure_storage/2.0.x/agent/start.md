<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Azure Storage Integration — agent index

Integrates **Azure Storage** (Blob) as a file-system backend for Drupal files (offloaded/scalable storage).
Config at `azure_storage.settings_form`; provides permissions. Version **2.0.3**. Core `^8.8.3||^9||^10||^11`.

**Security:** store the Azure account key/connection string as a secret (not webroot/plaintext); set
container access to match file privacy (private files must not be publicly readable). Azure requests use
TLS (not disabled).
