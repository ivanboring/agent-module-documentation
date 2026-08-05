<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Paragraphs Collection (paragraphs_collection) — agent index

Behaviour plugins, style plugins and grid layouts for **Paragraphs**. Requires `paragraphs`, core
`image` and `link`. Reports at `/admin/reports/paragraphs_collection/{layouts,styles}` behind
`administer paragraphs types`. Version **8.x-1.0-alpha12**. Core requirement `^10.2 || ^11`.

**Its own description reads: "a collection of EXPERIMENTS".** Take that at face value —
capitalised, and doing deliberate work. It is an **alpha** from the Thunder distribution's
ecosystem: capable, opinionated, and closely tied to how Thunder builds pages.

**Two directions exist from Paragraphs' bare mechanism — do not confuse them:**
- pre-built paragraph **types** (the `ept_*` family, waves 71–73);
- pre-built **plugins** that change how any paragraph behaves — **this module**.

**The risk to state:** behaviour plugin settings are stored **on the paragraph entities**, so a
plugin that changes shape or disappears **leaves data behind on content**.

Permissions: `administer lockable paragraph`, plus a `permission_callbacks` entry
(`Permissions::permissions`) generating further per-plugin permissions.

Realistic assessment: read it for the ideas, adopt individual pieces knowingly, and do not build a
client's page-building strategy on an alpha that names itself an experiment unless someone will
own the churn.
