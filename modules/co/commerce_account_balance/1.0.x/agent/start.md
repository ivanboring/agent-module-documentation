<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Commerce Account Balance — agent index

Manages **per-user account balances (store credit)** for Drupal Commerce (AccountBalance entity, balance
block). Permissions: `view account balance` / `view any account balance` / `administer account balances`.
Depends on `commerce`, `commerce_price`, core `user`. Version **1.0.4**. Core `^10.3||^11`.

E-commerce/financial — **permission-gated** (dedicated access-control handler; block checks `view account
balance`; others' balances need `view any account balance`). Balance is money-like — grant administer/view-any
to trusted staff only.
