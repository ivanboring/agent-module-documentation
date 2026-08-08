<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Serve Plain File (serve_plain_file) — agent index

Serves **admin-configured plain-text files** at chosen URLs (ads.txt, site-verification, etc.).
Version **8.x-1.11**. Admin routes gated by `administer serve plain file`.

Content is **admin-authored config** at admin-chosen paths — no filesystem-path input, no
user-supplied content → no traversal/injection. Confirm served paths don't shadow real routes.