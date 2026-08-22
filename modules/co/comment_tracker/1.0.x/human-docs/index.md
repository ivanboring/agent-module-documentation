# Comment tracker — manual setup guide

**Comment tracker** (`comment_tracker`) extends Drupal's core comment system to
record how many times comments are **viewed**. It stores view data alongside your
existing comments, giving editors and analysts a sense of which comments are
actually getting attention — useful for gauging engagement or surfacing popular
discussion. It builds on core comments rather than replacing them, so your comments
work exactly as before, now with view counts attached.

This is an analytics enhancement, not an access‑control feature — it has no role in
who can see or post comments. A couple of practical caveats are worth keeping in
mind: counting a view on every request has **caching implications** (per‑view
tracking can work against page caching), and recording who views what has
**privacy implications** you should weigh against your site's policies. This release
is also marked *not covered* by Drupal's security advisory policy. It supports
Drupal 10 and 11 and has no other module dependencies.

This guide is written for a **human** clicking through the admin UI. If you want
terse, token‑cheap references for an AI coding agent, read the sibling
[`agent/`](../agent/start.md) docs instead.

## Contents

1. [Installation](installation/index.md) — install the module with Composer and
   enable it.

There is **no configuration page** — the module begins recording comment views once
enabled.

## Where it lives in the admin menu

Comment tracker adds no settings form. Once enabled, it records view data on
comments in the background. The module provides its own permission(s), which you can
review at **People → Permissions** (`/admin/people/permissions`).
