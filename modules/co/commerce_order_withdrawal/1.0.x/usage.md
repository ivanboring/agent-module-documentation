<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Commerce Order Withdrawal provides a public order-withdrawal form with confirmation email and order log.

---

Commerce Order Withdrawal **provides a public order-withdrawal form** — implementing the EU "droit de
rétractation" (right of withdrawal) so a customer can request to withdraw/cancel an order, receiving a
confirmation email and recording the request in the order log. It depends on Commerce Order and Commerce Log,
provides its own permissions.

Use it to let customers exercise a legal withdrawal right. It is an e-commerce/legal-compliance feature exposing a
**public-facing form**. Security considerations for a public order action: ensure the form **verifies the
requester is entitled to withdraw that specific order** (e.g. matching order email/customer or a tokenized link) so
one customer can't trigger withdrawal on another's order, apply anti-abuse/rate-limiting to the public endpoint,
and confirm the withdrawal request only **logs/notifies** rather than auto-refunding without staff review. It has
its own permission for the management side. Configure the withdrawal form and email.

---

- Provide a public withdrawal form.
- Implement droit de rétractation.
- Send a confirmation email + order log.
- Depend on Commerce Order + Commerce Log.
- Provide its own permissions.
- Serve legal compliance.
- EXPOSE a public-facing order action.
- Verify the requester is entitled to withdraw THAT order (email/customer/token).
- Rate-limit the public endpoint (anti-abuse).
- Log/notify rather than auto-refund without staff review.
- Configure the form and email.
- Handle order withdrawal.
- Withdraw orders.
- Configure the form.
- Request cancellation.
- Handle the request.
- Notify staff.
- Log withdrawals.
- Verify entitlement.
- Provide order withdrawal.
