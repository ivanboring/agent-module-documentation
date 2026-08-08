<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# API Connection — agent index

Helper providing **generic, reusable API connection** functionality (endpoints, credentials, requests)
for other modules. Ships `api_connection_example`; config at `api_connection.settings_form`. Version
**1.0.0-beta2**. Core `^10.2||^11`. Provides permissions.

**Security:** store credentials as secrets; keep TLS verification on. Infrastructure for consuming
modules (no end-user feature alone).
