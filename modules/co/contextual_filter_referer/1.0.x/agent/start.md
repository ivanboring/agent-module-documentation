<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Contextual Filter Referer (contextual_filter_referer) — agent index

Supplies a View's **contextual filter from the referring page**, so context survives Views' AJAX
endpoint. Version **1.0.1**. Core `^10 || ^11`. Depends on `views`.

**The bug it fixes:** a block View takes its argument from the page it is on; clicking the pager
reloads over AJAX from Views' own endpoint, where the argument is gone. Page one is right and every
other page is wrong — usually reported as "the pager is broken".

**Referer is client-supplied**, and can be absent (privacy settings, proxies, some navigation) or
forged. Harmless when the argument selects *presentation*; **not** harmless the moment it controls
**access**, because then a client header decides what is shown.

**Rule: context yes, access never.** And decide what the View does with no referer — an argument
with no default gives everything or nothing, both surprising.