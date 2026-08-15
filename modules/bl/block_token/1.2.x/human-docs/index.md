# Block Token — manual setup guide

**Block Token** (`block_token`) lets you drop a configured block right into the body of a node
(or any other formatted‑text field) using a simple token like
`[block_token:system:navigation]`. Flag a block, and its rendered output becomes available as a
token; combine that with the Token Filter module's "Replace tokens" text‑format filter and
editors can embed a block inline in WYSIWYG content — no Layout Builder, no block regions
required.

It's a handy way to reuse existing content: drop a call‑to‑action or promo block into an
article, insert a newsletter signup mid‑page, or pull a view‑backed block into an otherwise
static page. Because the token references the block by a stable `<module>:<block_id>` name,
you edit the block once and every place the token appears updates automatically. Only blocks
you explicitly flag are exposed (a per‑block opt‑in checkbox), and the block renders through
Drupal's normal, escaped render pipeline with its usual access and visibility rules.

**One important thing to know before you enable it.** Block Token changes who can reach the
block configuration screens. Its permission, **Administer block token**, looks like a small
"let this role toggle a token checkbox" permission, but enabling the module makes that
permission (and, oddly, *Administer taxonomy*) grant access to the **full block edit form and
block layout listing** — effectively full block administration. Treat *Administer block token*
as equivalent to core's *Administer blocks* when you decide who gets it, and don't hand it to
low‑trust roles. This is covered in detail in [Configuration](configuration/index.md#permissions-and-an-important-security-caveat).

The module depends on core's **Block** module plus the contrib **Token** and **Token Filter**
modules, and ships no submodules.

This guide is written for a **human** clicking through the admin UI. If you want terse,
token‑cheap references for an AI coding agent, read the sibling
[`agent/`](../agent/start.md) docs instead.

## Contents

1. [Installation](installation/index.md) — install the module (and its Token / Token Filter
   dependencies) with Composer and enable them.
2. [Configuration](configuration/index.md) — enable the filter, flag a block, use the token in
   content, and the permission/security caveat.

## Where it lives in the admin menu

There is no dedicated settings page. You enable the "Replace tokens" filter under
**Configuration → Content authoring → Text formats and editors**, flag blocks on the normal
block edit forms under **Structure → Block layout**, and grant the permission under **People →
Permissions**.

## How to use it

At a glance: enable Token Filter's **Replace tokens** filter on a text format, edit a block and
tick **Create the token for this block**, copy the token it shows you, and paste it into a field
that uses the token‑enabled format. The full walkthrough is in
[Configuration](configuration/index.md).
