# Commerce Payment Extra — manual setup guide

**Commerce Payment Extra** (`commerce_payment_extra`) provides an expanded payment
API for Drupal Commerce. Rather than adding a screen you click through, it adds
extra payment-related behavior and hooks that other payment modules, integrations,
and custom code can build on. Payments still flow through Commerce's normal payment
handling and access rules — this module extends that machinery rather than replacing
it, and it has no access-control role of its own.

The headline features it adds are automatic, order-state-driven payment actions:

- **Automatically place** orders that are authorized on the order balance.
- **Capture** a payment when the order's state changes to *completed*.
- **Cancel** a payment when the order's state changes to *canceled*.

It ships a submodule, **`commerce_payment_extra_order`**, and depends only on
Commerce's **Payment** module (`commerce_payment`). Because its value is an API for
developers, most of the "setup" is simply enabling it (and the submodule if you need
it) so its behavior and hooks are available to the rest of your payment stack.

This guide is written for a **human** clicking through the admin UI. If you want
terse, token‑cheap references for an AI coding agent, read the sibling
[`agent/`](../agent/start.md) docs instead.

## Contents

1. [Installation](installation/index.md) — install the module with Composer, enable
   it, and (optionally) enable its submodule.

There is **no configuration page** for this module — it exposes API/behavior, not a
settings form. Once enabled, its order-state-driven payment actions take effect and
its hooks/helpers are available to other modules.

## Where it lives in the admin menu

Commerce Payment Extra adds no admin page of its own. Its effects appear inside the
normal Commerce **payment** and **order** workflows — for example, a payment being
captured automatically when you move an order to *completed*.
