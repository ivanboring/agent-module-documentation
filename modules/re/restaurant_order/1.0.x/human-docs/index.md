# Restaurant Order Management — manual setup guide

**Restaurant Order Management** (`restaurant_order`) is an in-Drupal ordering and
point-of-sale workflow for restaurants. It aims to cover the day-to-day operation
end to end: building and managing a menu, taking table orders, routing kitchen and
bar tickets — **KOT** (Kitchen Order Ticket) and **BOT** (Bar Order Ticket) — and
producing bills, including aggregated bills per table or session. It does this with
its own custom routes, controllers and forms rather than by configuring core entities,
and it depends on core's **Field**, **User** and **Views** modules.

> ## Security warning — read before installing
>
> **As shipped in version 1.0.1, this module's order routes are effectively public.**
> A public code review found that **11 order routes are gated only by
> `_permission: 'access content'`** — a permission that anonymous users hold by
> default on a standard Drupal site — **with no further access check in the
> controllers**. In practice that means, on a default site:
>
> - `/restaurant/orders` **enumerates every order**, including their session ids.
> - `/restaurant-order/view/{id}` is an **IDOR**: any visitor can view any order by
>   guessing or incrementing the id.
> - `/restaurant/order/{id}/status/{status}` lets **any anonymous visitor change any
>   order's status**.
>
> This is not a theoretical concern — the behaviour was verified live (the endpoints
> returned 200/302 rather than 403 to an unauthenticated request). **Do not run this
> module on a public site as-is.** Before any production use, gate every order route
> behind real, restaurant-specific permissions and add ownership/session checks in
> the controllers, or restrict access to these paths at another layer. Treat the
> current release as suitable only for a locked-down, non-public environment while
> that is done.

This guide is written for a **human** clicking through the admin UI. If you want
terse, token‑cheap references for an AI coding agent, read the sibling
[`agent/`](../agent/start.md) docs instead.

## Contents

1. [Installation](installation/index.md) — install with Composer and enable the
   module.

There is **no central settings form** for this module — its screens are operational
(menu management, order taking, ticket routing, billing) rather than a configuration
page, so setup beyond installation is done by using those workflow screens and by
setting up the permissions described in the warning above.

## How to use it — and how to lock it down first

Functionally, staff use the module's screens to build a menu, place table orders,
route KOT/BOT tickets to the kitchen and bar, and generate bills per table or
session. The custom routes provide the order list, the per-order view, the
status-change action, and the billing/receipt output.

Because those routes ship without real access control (see the warning), the first
task on any install is access, not workflow:

1. Identify the order-related routes (`/restaurant/orders`,
   `/restaurant-order/view/{id}`, `/restaurant/order/{id}/status/{status}`, and the
   related billing/menu routes).
2. Replace the `access content` gate with permissions meaningful to your restaurant
   roles (for example separate "manage menu", "take orders" and "view billing"
   permissions), and add ownership or session checks so one order cannot read or
   mutate another.
3. Only once access is enforced should you expose any of these screens to real users.

## Where it lives in the admin menu

The module works through its own custom paths (under `/restaurant/…` and
`/restaurant-order/…`) rather than a settings page in the admin configuration tree.
