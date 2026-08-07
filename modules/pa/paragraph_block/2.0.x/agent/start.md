<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Paragraph Block (paragraph_block) — agent index

Exposes **paragraph types as block types**, so existing components are placeable through block
layout or Layout Builder. Version **2.0.0-rc4**. Core `^10 || ^11`.

**Most valuable as a migration path, least as a permanent architecture.** Running both indefinitely
means every new component needs a which-is-it decision that drifts by author — how a site ends up
with three ways to place a CTA. Bridge now, agree a direction, let new work follow it.

**Check two things on a real content model:** whether a bridged paragraph keeps its **translation**
behaviour (paragraphs and block content translate differently), and whether **nested paragraphs**
survive the bridge — that is where translations between component models usually break.