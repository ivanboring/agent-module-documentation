# Content Connected — manual setup guide

**Content Connected** (`content_connected`) is a lightweight authoring aid that
**shows how a piece of content is connected to other content** before you edit or
delete it. Its main purpose is to warn an administrator, at delete time, that a node
is still referenced elsewhere — so you can decide whether it's really safe to remove.
It depends only on core's Field module and provides its own permissions.

The connections are surfaced as a **sub‑tab on node pages**, where the related
content is listed in a table showing *how* each item is connected — through an
**entity reference field** or through a **textarea / long‑text field** that mentions
it. That makes it a simple impact‑analysis tool: before you change or delete
something, you can see what depends on it. The report follows normal access, and
which roles can see the tab is controlled by the module's permissions.

This is a **report**, not a configuration feature — there's no settings form to fill
in and nothing to switch on beyond enabling the module and granting the permission.
This project is covered by Drupal's security advisory policy, and it has no
access‑control role of its own beyond gating the report behind its permission.

This guide is written for a **human** clicking through the admin UI. If you want
terse, token‑cheap references for an AI coding agent, read the sibling
[`agent/`](../agent/start.md) docs instead.

## Contents

1. [Installation](installation/index.md) — install with Composer and enable the
   module.

There is **no configuration page** for this module — it's a report. See "How to use
it" below.

## How to use it

1. **Grant the permission.** Under **People → Permissions**, give the roles that need
   it access to the Content Connected report (the module provides its own
   permission for this).
2. **Open a node**, then switch to the **Content Connected** sub‑tab on that node.
3. **Review the table** of connected content. Each row shows a related item and how
   it's connected — via an entity reference field or via a long‑text/textarea field —
   so you can gauge the impact before editing or, especially, **deleting** the node.
