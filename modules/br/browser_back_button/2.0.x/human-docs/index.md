# Browser Back Button — manual setup guide

**Browser Back Button** (`browser_back_button`) addresses what happens when a
visitor uses the browser's Back button and lands on a page whose state has not
survived. The specific culprit is the browser's **back/forward cache** (bfcache):
to feel instant, browsers often restore a previous page from memory rather than
re‑requesting it — so the visitor returns to the DOM exactly as they left it.

That is fine for a static article, but on interactive pages it means stale state:
a cart count that no longer matches, a form still showing a submitted state, an
AJAX‑loaded region that no longer matches the server, or — most seriously — a
logged‑in header on a page the visitor has since logged out of. On a shop or a
members' area those are not cosmetic: a restored page showing an authenticated
state after logout is a real disclosure on a shared computer, and a stale cart is a
support ticket. This module handles that class of problem. It has no dependencies
and supports Drupal 10 and 11.

Two things are worth understanding before you reach for it:

1. **The mechanism has a cost.** Forcing a reload when a page is restored fixes
   correctness but throws away exactly the speed the back/forward cache exists to
   provide. Applying it to every page is a large performance regression for a
   problem that only affects a few pages — target the pages whose state genuinely
   cannot survive restoration.
2. **The underlying problem is usually cache headers.** A page that must not be
   restored should say so, and `Cache-Control: no-store` is the standard,
   server‑side way to opt a page out of the back/forward cache. A JavaScript
   workaround like this module is what you use when those headers are not yours to
   set.

This guide is written for a **human** using the module. If you want terse,
token‑cheap references for an AI coding agent, read the sibling
[`agent/`](../agent/start.md) docs instead.

## Contents

1. [Installation](installation/index.md) — requirements, installing with Composer,
   and enabling the module.

## Where it lives in the admin menu

This is a lightweight JavaScript‑oriented module. It adds no permissions of its
own and no top‑level admin section — once enabled it does its work on the front end
via JavaScript. Its behavior is best scoped to the specific pages that need it (see
below) rather than applied blanket across the whole site.

## How to use it

1. Install and enable the module (see [Installation](installation/index.md)).
2. Identify the pages whose state genuinely cannot survive a Back‑button
   restoration — a checkout, a cart, a members' area, a dashboard, a multi‑step
   wizard.
3. Prefer fixing the root cause with a `Cache-Control: no-store` response header on
   those pages where you control the headers; use this module's JavaScript approach
   for the cases where you cannot. Either way, keep the fix targeted to the affected
   pages so you do not give up the back/forward cache's speed site‑wide.
