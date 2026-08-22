# Node Edit Access by Term — manual setup guide

**Node Edit Access by Term** (`node_edit_access_by_term`) aims to **restrict who can
edit a node based on the taxonomy terms it is tagged with**. Each taxonomy term gains
a field listing the users (and/or roles) allowed to edit content that carries that
term; once a term names an allowed user, the edit form for any node tagged with that
term is limited to those users. It's a slim, single‑purpose take on term‑based access
— many modules control *view* access by term, but this one focuses narrowly on
*editing*.

The intended use is scoping editors to their content: tag pages for the "Marketing"
section with a term, list the marketing editors on that term, and only they get the
edit form for those pages. It provides its own permissions and depends on core
taxonomy and node.

> **Critical limitation — do not treat this as real access control.** The restriction
> is enforced **only** on the node edit form: when a disallowed user opens the form,
> the module blocks it. But the module does **not** implement Drupal's node access
> hooks, so the restriction applies *only* to that one form. Any other way of editing
> a node **bypasses it entirely** — including **JSON:API `PATCH`** and **REST**
> updates (core, often enabled), **Quick Edit** inline editing, **Views Bulk
> Operations** field changes, and programmatic or migration edits. A user who holds
> core's edit permission for the content type can still change the node through any of
> those channels. So the term restriction is effectively a **UI hint**, and relying
> on it gives a false sense of protection. Until the module enforces access through
> Drupal's entity‑access system, **do not** use it to protect sensitive edits where
> any of those alternate edit paths are enabled — enforce those with a proper
> entity‑access mechanism instead.

This guide is written for a **human** clicking through the admin UI. If you want
terse, token‑cheap references for an AI coding agent, read the sibling
[`agent/`](../agent/start.md) docs instead.

## Contents

1. [Installation](installation/index.md) — install with Composer and enable the
   module.
2. [Configuration](configuration/index.md) — set the allowed users/roles on each
   taxonomy term, and understand the important limitation above.

## Where it lives in the admin menu

Node Edit Access by Term adds no central settings page. You configure it on the
**taxonomy term edit pages** themselves — after installation, each term's edit form
gains a field for the users that have edit access. See
[Configuration](configuration/index.md).
