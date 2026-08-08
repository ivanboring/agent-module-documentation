<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Commerce Funds provides a funds-management system for Commerce: user wallets with balances, deposits, withdrawals, transfers between users, and escrow.

---

Commerce Funds turns Commerce into a system with user balances — a wallet each user can deposit into, withdraw from, transfer to other users, and hold in escrow. That makes it money-handling code, and money-handling is where correctness and authorization matter most. The security posture to bring is caution proportional to the stakes: balance changes, transfers and withdrawals are financial operations, so who can perform them and how they are authorized must be verified against your rules, withdrawals typically need administrative approval, and the transaction records are the source of truth for what users are owed. It is a mature module, but any site running real money through it should treat balance and transfer operations as audited financial flows: restrict the relevant permissions tightly, enable and review the transaction log, and reconcile. Do not grant funds permissions broadly, and test the deposit/withdraw/transfer/escrow flows against adversarial cases before going live with real value.

---

- Give users a wallet balance.
- Let users deposit funds.
- Let users withdraw funds.
- Transfer funds between users.
- Hold funds in escrow.
- Restrict funds permissions tightly.
- Require approval for withdrawals.
- Audit the transaction log.
- Reconcile balances.
- Treat operations as financial.
- Test adversarial transfer cases.
- Manage a marketplace balance.
- Record every balance change.
- Configure fees and conversion.
- Handle real money carefully.
- Verify authorization on transfers.
- Enable when needed.
- Keep disabled otherwise.
- Restrict administration.
- Confirm on your site.
- Test before production.
- Review configuration.