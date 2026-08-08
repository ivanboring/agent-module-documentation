<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Duplicate Node Layout & Block — agent index

Duplicates a **node with its Layout Builder layout + associated blocks** (clones full page structure, not
just fields). Depends on core `node`, `layout_builder`; provides permissions. Version **2.0.2**. Core
`^9||^10||^11`.

Content-editing/cloning — duplicate governed by node access; clone action gated by its permission (who can
duplicate). Grant appropriately.
