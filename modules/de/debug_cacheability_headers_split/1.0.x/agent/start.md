<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Debug Cacheability Headers Split — agent index

**Splits oversized debug cacheability headers** (`X-Drupal-Cache-Tags`/`-Contexts`) into multiple headers to
avoid the server max-header-size limit (debug headers work on many-cache-tag pages). Config at
`debug_cacheability_headers_split.settings`. Version **1.0.1**. Core `^10||^11`.

Developer/debugging — debug headers are a dev aid (disable in production); no content/access role.
