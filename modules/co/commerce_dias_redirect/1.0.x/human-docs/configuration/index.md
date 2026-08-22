# Configuration

Commerce DIAS is configured entirely on the payment‑gateway form — there is no
separate settings page.

## Add the gateway

1. Log in as a user who can administer Commerce.
2. Go to **Administration → Commerce → Configuration → Payment gateways**
   (`/admin/commerce/config/payment-gateways`) and click **Add payment gateway**.
3. Choose the **DIAS Payment Redirect** plugin.

## Fill in the fields

All four fields come from your DIAS bank agreement:

- **Order registration API URL** — the DIAS endpoint the module calls to
  register an order and obtain the bank `formUrl` the shopper is redirected to.
- **Get order status API URL** — the DIAS endpoint the module polls to read an
  order's status when the shopper returns, and again from cron.
- **Username** — the merchant username supplied by the bank.
- **Password** — the merchant password supplied by the bank.

The store's default language is passed to DIAS as the payment language, and the
currency is **fixed to EUR** (currency code `978`) in the redirect form — this
gateway is euro‑only.

> **Gateway machine name.** The module's callback and cron code look the gateway
> up by a hard‑coded machine id (`dias_payment`). Give the gateway that machine
> name when you create it, or the return callback and the stale‑order cron will
> not find its configuration.

Click **Save**. The method is now available at checkout; place a test order and
confirm the shopper is POST‑redirected to the bank's `formUrl` and that a
completed payment is recorded on a successful return.

## How a payment completes

When the shopper returns, an anonymous callback route re‑queries the DIAS
**get‑order‑status** API and only records a **completed** payment when DIAS
reports success (`errorCode == 0`, `orderStatus == 2`, `actionCode == 0`). The
payment amount is read server‑side from the order balance, **not** from anything
the browser sends back, and a cron job resets the checkout step of unpaid draft
DIAS orders older than 15 minutes so abandoned attempts don't get stuck.

## Security caveats to plan for

These are drawn from the module's own public documentation. None of them stops
the gateway working, but you should understand them before taking real money.

- **Credentials are stored in plain configuration.** The username and password
  live in the payment‑gateway configuration as plain text (there is no Key‑entity
  integration), and the API service appends them to the DIAS request **URL query
  string**. Make sure the DIAS endpoints are HTTPS, restrict who can edit payment
  gateways, and consider redacting the `commerce_dias_redirect` log channel so
  credentials don't end up in logs.
- **Order‑binding gaps in the callback.** The callback does re‑fetch the real
  status from DIAS rather than trusting the browser — that part is sound — but it
  uses the `orderId` from the request query string rather than the `orderId`
  stored on the order, and it does not verify that the DIAS order actually
  belongs to this Commerce order or that the paid amount matches the order
  balance. Treat these as reconciliation gaps: after go‑live, reconcile DIAS
  remote order status against your Commerce payment records rather than assuming
  every completed payment is correctly bound.
- **Whole‑euro amounts.** The amount sent to DIAS is computed as an integer
  number of euros times 100, which truncates fractional (cent) amounts. Confirm
  this matches how you price products before relying on it.
