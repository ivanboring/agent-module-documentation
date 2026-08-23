# Configuration

Getting SIBS payments working takes two steps: point Drupal at SIBS with your
credentials, then add the SIBS gateway to Drupal Commerce.

## 1. Configure the SIBS API

Go to **`/admin/config/sibs-api`** and enter your SIBS merchant credentials. Keep these
as **secrets** — supply them via the SIBS API module's environment-variable or Key
configuration rather than pasting a permanent secret into plain config, and make sure
the site runs over HTTPS. These credentials authorise real payment operations.

## 2. Add the payment gateway

1. Go to **Commerce → Configuration → Payment gateways → Add**
   (`/admin/commerce/config/payment-gateways/add`).
2. Choose **SIBS API SPG OFFSITE** as the gateway plugin.
3. Select the payment methods you want to offer customers:
   - **Reference (MB)** — Multibanco ATM reference payments.
   - **CARD** — direct credit-card payments.
   - **MBWAY** — mobile payments via MB WAY.
4. Save the gateway.

Customers will now be able to pay via SIBS at checkout. Payment is completed off-site
on SIBS, and the module records the result back in your store.

## How payment confirmation works

You do not have to configure this — it is built in — but it is good to understand.
When the customer returns from SIBS, and whenever the status endpoint runs, the module
re-fetches the real payment status directly from SIBS's authenticated API on the server
side. It marks the payment `completed` and advances the order **only** when SIBS itself
reports `Success`; a Declined or Timeout result causes the return handler to throw. The
verdict therefore always comes from SIBS, so a forged return or callback cannot make an
order look paid.

## Security caveat to harden

The payment-status route `/sibs-api-commerce/payment-status/{order_id}` is **public**
and keyed only by the order id, with **no ownership check**. Since order ids are
guessable, anyone who guesses one can trigger a status re-fetch and read back that
order's payment status and the raw SIBS response — a payment-status information
disclosure. It cannot be used to mark anything paid, but it does leak status. If you
can, add an access/ownership check to that route so only the order's owner (or an
administrator) can read its status.
