# Fasttoggle — manual setup guide

**Fasttoggle** (`fasttoggle`) adds one‑click toggle links for common boolean
settings — publishing/unpublishing a node, promoting or demoting it, marking it
sticky, and flipping status on comments and users — so editors can change these
without opening the full edit form. It uses AJAX callbacks, which saves a lot of
page loads; if JavaScript is unavailable it degrades gracefully to a normal
confirmation page.

The important thing to understand is that Fasttoggle grants **no new
capabilities**. Every toggle is gated by the corresponding core permission — a user
can only fast‑toggle something they would already be allowed to change on the edit
form. It simply makes existing actions faster. That also means the toggles you see
depend entirely on how permissions are assigned, so it is worth confirming those
match your moderation model.

It depends on core's **Node** and **Comment** modules, provides its own set of
permissions, and has a small settings form for choosing which toggles appear.

This guide is written for a **human** clicking through the admin UI. If you want
terse, token‑cheap references for an AI coding agent, read the sibling
[`agent/`](../agent/start.md) docs instead.

## Contents

1. [Installation](installation/index.md) — install the module with Composer and
   enable it.
2. [Configuration](configuration/index.md) — the settings form and the permissions
   that control which toggles each role sees.

## Where it lives in the admin menu

The settings form is at the `fasttoggle.settings` route. Its per‑role permissions
are managed on the standard permissions page at **People → Permissions**
(`/admin/people/permissions`) — search for "fasttoggle". See
[Configuration](configuration/index.md) for details.

## How to use it

Once enabled and permissions are granted, the toggle links appear next to the
relevant status on content, comment, and user listings and pages. Click a link (for
example *Unpublish*) and Fasttoggle flips the setting in place via AJAX — no edit
form, no full page reload.
