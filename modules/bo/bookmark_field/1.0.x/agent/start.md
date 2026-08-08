<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Bookmark Field — agent index

Provides a **bookmark field/block giving each entity a shareable bookmark URL** (bookmark and return to a
specific entity). Depends on core `field`, `block`. Version **1.0.0**. Core `^10||^11`.

Content-display/navigation — a bookmark does **not** bypass access (the entity's normal access control still
applies when followed); don't treat an unguessable bookmark as a secret capability. No access role.
