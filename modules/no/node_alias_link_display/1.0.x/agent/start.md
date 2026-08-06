<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Node Alias Link Display (node_alias_link_display) — agent index

Rewrites `/node/123`-style links in WYSIWYG and rendered content to their **path aliases**.
Version **1.0.1**. Core `^10 || ^11`. No dependencies, routes or permissions.

**Display-time rewriting is the right choice, and worth explaining:** the stored `/node/123` is the
**stable** reference — it keeps working when the alias changes, whereas markup rewritten on save
would break. This gets the readable URL without giving up stability.

**Two checks:** aliases resolve per link at render time (fine normally; worth knowing on a
link-heavy uncached page), and it alters rendered links — check interaction with anything else in
that pipeline, particularly language prefixes and link-tracking.