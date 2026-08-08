<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Exclusive Boolean — agent index

Ensures **only one node of a type can have a boolean field checked at a time** (checking one auto-unchecks the
previous — single "featured"/hero flag). Depends on core `field`. Version **1.0.2**. Core `^10.2||^11`.

Content-editing/data — enforces single-value exclusivity across a content type; no access role.
