# Layout Builder Advanced Permissions — manual setup guide

**Layout Builder Advanced Permissions** (`layout_builder_perms`) replaces Drupal core Layout
Builder's coarse "configure any / all layouts" gate with **fine‑grained permissions**. Instead
of all‑or‑nothing, you can grant specific layout actions — add, configure, remove or reorder
blocks; add, edit or remove sections — and scope them by content type, entity bundle, layout,
layout type, or inline block type. It's how you let, say, a marketing role build landing pages
without handing them site‑wide layout admin.

The **base module** does two things: it adds one permission, **Access Layout Builder page**, and
it defines a pluggable permission system. On its own it defines *no* per‑operation restrictions —
the granular permissions come from its **six submodules**, and you enable only the ones you need.
For example, the *Per content type* submodule exposes permissions like "add blocks on article
nodes"; the *Block operations per layout* submodule exposes "add blocks in one‑column layouts".
The granular permissions then appear on the normal permissions page.

There is **no settings form** — everything is driven by role permissions at *People →
Permissions*. One thing to understand well (see the [Configuration](configuration/index.md)
security note): the base **Access Layout Builder page** permission is more powerful than its name
suggests, and until you enable and configure the granular submodules, it can be the *only* gate
on editing per‑entity layout overrides. Treat it as privileged. The module depends on core's
**Layout Builder**.

This guide is written for a **human** clicking through the admin UI. If you want the operations
list, the plugin type, the runtime access model and the fail‑open details for an AI coding agent,
read the sibling [`agent/`](../agent/start.md) docs.

## Contents

1. [Installation](installation/index.md) — install the module with Composer, enable it, and pick
   the submodules you need.
2. [Configuration](configuration/index.md) — enable the granular submodules and grant the right
   permissions, with the important security note on *Access Layout Builder page*.

## Where it lives in the admin menu

There is no page of its own. All configuration is done by assigning permissions at **People →
Permissions** (`/admin/people/permissions`) — the base *Access Layout Builder page* permission,
the dynamic per‑bundle "configure own editable … layout overrides" permissions, and whatever
granular permissions the enabled submodules add. Enable submodules at **Extend**
(`/admin/modules`).
