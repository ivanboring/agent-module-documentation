# Commerce Account Balance — manual setup guide

**Commerce Account Balance** (`commerce_account_balance`) gives each customer a
per‑user account balance — think store credit or a simple wallet — inside a
Drupal Commerce store. It adds an *AccountBalance* entity to track how much
credit a customer holds, a balance block you can place on a page, and its own set
of permissions so you decide exactly who may see or change a balance.

The typical reason to reach for it is to collect money owed across several orders,
or to hand customers a credit they can draw down. It works by surfacing balance
information on the Commerce order view page — handy when a single customer account
is tied to multiple orders — and it plays into order/customer email as well. It
depends on Drupal Commerce, Commerce Price, and core User, and sits in the
Commerce package.

A balance is money‑like: adjusting it has a real financial effect. Because of
that the module is strictly **permission‑gated** through a dedicated access‑control
handler. Three permissions govern it — `view account balance` (see your own
balance), `view any account balance` (see other people's), and `administer
account balances` (create and adjust balances). Grant the last two only to trusted
staff. There is no separate settings form to fill in; setup is really about
enabling the module and assigning those permissions.

This guide is written for a **human** clicking through the admin UI. If you want
terse, token‑cheap references for an AI coding agent, read the sibling
[`agent/`](../agent/start.md) docs instead.

## Contents

1. [Installation](installation/index.md) — install with Composer, enable the
   module, and assign the balance permissions.

There is no dedicated configuration form for this module, so there is no
Configuration page in this guide. What little "configuration" it needs is
permission assignment, covered at the end of Installation.

## Where it lives in the admin menu

Commerce Account Balance adds no top‑level settings page of its own. You manage
who can use it from **People → Permissions**
(`/admin/people/permissions`), and its balance information appears on Commerce
order view pages under **Commerce → Orders**. If you want the balance block
visible somewhere, place it from **Structure → Block layout**
(`/admin/structure/block`).

## How to use it

1. Enable the module (see [Installation](installation/index.md)).
2. On **People → Permissions**, grant `administer account balances` and
   `view any account balance` to your staff/administrator roles only, and decide
   whether customers should be able to see their own balance with `view account
   balance`.
3. Optionally place the **balance block** via **Structure → Block layout** so a
   logged‑in customer can see their current credit.
4. Balance details then appear on the relevant Commerce order pages, helping you
   reconcile what a customer owes across multiple orders.
