# Commento Field — manual setup guide

**Commento Field** (`commento_field`) integrates
[Commento](https://commento.io/) — a lightweight, privacy‑focused third‑party
commenting service — into Drupal as a **field**. Instead of using Drupal's core
comment system, content that has this field displays an embedded Commento comment
thread, and visitors comment through Commento's own widget. It's a good fit if
you'd rather offload comment storage and moderation to a hosted (or self‑hosted)
Commento instance while keeping the discussion visible on your Drupal pages.

Because comments live in Commento rather than in Drupal, the widget loads
Commento's **third‑party JavaScript** on the pages where you place the field. That
means comment data flows to your Commento instance, so review the privacy and
data‑flow implications for your site and audience before enabling it publicly. The
module provides two permissions — `toggle commento comments` (control whether the
thread shows) and `view commento comments` (see the thread) — and supports Drupal
9, 10, and 11. This release is marked *not covered* by Drupal's security advisory
policy.

This guide is written for a **human** clicking through the admin UI. If you want
terse, token‑cheap references for an AI coding agent, read the sibling
[`agent/`](../agent/start.md) docs instead.

## Contents

1. [Installation](installation/index.md) — install the module with Composer and
   enable it.

There is **no central settings form** — you add the field to a content type and
point it at your Commento instance, as described in "How to use it" below.

## Where it lives in the admin menu

Commento Field adds no configuration page of its own. You work with it as a field
under **Structure → Content types → *(type)* → Manage fields**
(`/admin/structure/types/manage/*/fields`) and **Manage display**, and you review
its permissions at **People → Permissions** (`/admin/people/permissions`).

## How to use it

1. Add a **Commento** field to the content type whose pages should show a Commento
   thread (via *Manage fields*), pointing it at your Commento instance so the
   widget knows where to load comments from.
2. On the content type's **Manage display**, make sure the field is shown where you
   want the thread to appear.
3. Grant **`view commento comments`** to the roles that should see threads, and
   **`toggle commento comments`** to those allowed to turn the thread on or off.

Once set up, the Commento widget appears on that content and visitors comment
through it. Because this loads third‑party script and sends comment activity to
your Commento instance, confirm your privacy notices and data‑handling reflect
that.
