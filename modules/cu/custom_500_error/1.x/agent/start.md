<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Custom 500 Error (custom_500_error) — agent index

Customize the **500 internal-server-error page**. Version **1.1.3**.

**Security-hygiene note:** the 500 page must **not leak** stack traces, DB detail or internal paths to
untrusted users — customize with a generic message and confirm no debug output.