<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Commerce Account Balance manages user account balances for Drupal Commerce.

---

Commerce Account Balance manages **per-user account balances** — store credit / wallet balances — for
Drupal Commerce, so a customer's balance can be viewed and used within a Commerce store. It provides an
AccountBalance entity, a balance block, and its own permissions (`view account balance`, `view any account
balance`, `administer account balances`). It depends on Commerce, Commerce Price and core User, in the
Commerce package.

Use it to give customers a store-credit balance. It is an e-commerce/financial feature and its access is
**permission-gated**: a dedicated access-control handler governs the AccountBalance entity, the balance block
checks `view account balance`, and viewing others' balances requires `view any account balance` — so grant
`administer account balances` and `view any account balance` only to trusted staff (a balance is money-like,
and adjusting it has financial impact). Configure and grant the balance permissions.

---

- Manage per-user account balances.
- Provide store credit / wallet balances.
- Integrate with Drupal Commerce.
- Provide an AccountBalance entity and block.
- Depend on Commerce/Commerce Price/User.
- Provide view/view-any/administer permissions.
- Gate access via an access-control handler.
- Require view any account balance for others' balances.
- Grant administer/view-any to trusted staff only.
- Treat the balance as money-like.
- Configure the balance permissions.
- Handle account balances.
- Show a balance block.
- Configure balances.
- Manage store credit.
- Gate balance viewing.
- Handle the wallet.
- View balances.
- Configure Commerce credit.
- Provide balances.
