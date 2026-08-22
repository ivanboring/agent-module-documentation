# Configuration

Setting up Monobank has two parts: creating a Basket payment point that uses the
Monobank service, and entering your Monobank token on the gateway settings page.

## 1. Create the Basket payment point

1. Go to **`/admin/basket/settings-payment`**.
2. Create a payment point and choose **Monobank** as its service.
3. After saving, Basket shows a button through to the Monobank gateway's own
   settings page (equivalently, navigate to
   **`/admin/config/development/monobank`**).

## 2. Enter the Monobank token

On the gateway settings page (`monobank.settings`) you enter your Monobank
acquiring **token** and can switch the module into **test mode** while you try
things out.

**Treat the token as a secret.** It authorises invoice creation and status
lookups against your Monobank account, so it should not be committed to your
repository or exported into configuration in plain text. The safe pattern on this
project is to keep the value in an environment variable:

```bash
ddev dotenv set .ddev/.env --monobank-token=<your-token>
ddev restart
```

The flag becomes the environment variable `MONOBANK_TOKEN` in the web container.
Prefer surfacing it through a **Key** entity (install the Key module if needed)
with the built-in environment provider, or read it with `getenv('MONOBANK_TOKEN')`
where a Key entity does not fit. Because the module calls Monobank's servers, make
sure your site's outbound network allows HTTPS requests to the Monobank API.

## 3. Understand — and mitigate — the webhook risk

This is the most important part of configuring Monobank safely.

The status callback at **`/monobank/status`** is public and marks an order paid
(and triggers Basket's `paymentFinish()` fulfilment) as soon as it receives a
POST claiming `status=success` with an `invoiceId`, `amount` and currency that
match the stored payment. It **does not verify Monobank's `X-Sign` signature**.
Because a customer already knows those matching values for their own order, a
forged request to `/monobank/status` can get an order fulfilled without a real
payment.

The user-facing result page does re-check the payment authoritatively via
Monobank's server-side `getStatus()`, but the order-fulfilment side effects run
in the unverified webhook path. To operate this module safely:

- **Do not release goods on the webhook alone.** Confirm each payment via the
  authoritative server-side `getStatus()` before fulfilling an order.
- **Verify the `X-Sign` signature** against Monobank's public key
  (`/api/merchant/pubkey`) if you customise or extend the callback handling.
- **Serve the site over HTTPS** so tokens and callbacks are encrypted.

## Test first

Use test mode to run a payment end to end, then switch to live once you have
confirmed both the happy path and your fulfilment safeguards.
