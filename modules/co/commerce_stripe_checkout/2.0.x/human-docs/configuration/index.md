# Configuration

Configuration happens on the payment gateway you add, plus registering a webhook in the
Stripe Dashboard.

## Add the payment gateway

1. Go to **Commerce → Configuration → Payment gateways**
   (`/admin/commerce/config/payment-gateways`) and click **Add payment gateway**.
2. Choose the **Stripe Checkout** plugin.
3. Enter your Stripe **secret key** and **publishable key**, and choose **Test** or **Live**
   mode. Use your test keys in test mode.
4. **Payment methods** — tick the Stripe Checkout methods you want to offer. Admin
   JavaScript adds **Select All** and **Uncheck All** controls. **Card** is always locked on
   as the required minimum. If you tick a method that is not yet activated in your Stripe
   Dashboard, the module automatically strips it and retries checkout with the rest, logging
   a warning with a link to fix it — so checkout never breaks over a misconfigured method.
5. **Locale** — set the hosted checkout page's language to any of Stripe's supported locales,
   or leave it on **auto** to let Stripe detect the browser language.
6. Save the gateway.

## Set the webhook — and its signing secret

The gateway exposes a webhook endpoint that handles asynchronous payment events
(`checkout.session.completed`, the async payment succeeded/failed events, and
`checkout.session.expired`). These are essential for methods like SEPA Direct Debit, ACH, and
Boleto, where confirmation arrives after the customer has left checkout.

1. In your Stripe Dashboard, add a webhook endpoint pointing at:

   ```
   https://your-site.example/stripe-pay/webhook/{gateway_id}
   ```

   Replace `{gateway_id}` with the machine ID of the gateway you just created.
2. Copy the endpoint's **signing secret** (it begins with `whsec_`) from Stripe.
3. Paste it into the gateway's **webhook secret** field in Drupal.

**This step is not optional for production.** When a signing secret is configured, every
incoming webhook POST is verified using Stripe's `Stripe-Signature` HMAC header, and any
request with an invalid or missing signature is rejected with HTTP 400. If you leave the
webhook secret **empty**, signature verification is **disabled** and the endpoint processes
unverified events — which would let an attacker who can reach the URL forge a "payment
succeeded" event and mark orders paid without paying. The module explicitly warns about this
in the settings form ("not recommended for production") and in its logs. Always set the
signing secret before going live.

## Handle the Stripe secrets securely

Both the Stripe **secret key** and the **webhook signing secret** are credentials. Keep them
out of committed configuration by storing the values in environment variables. With DDEV:

```bash
ddev dotenv set .ddev/.env --stripe-secret-key=<sk_...> --stripe-webhook-secret=<whsec_...>
ddev restart
```

Keep `.ddev/.env` out of version control. Where the fields support it, reference the values
through [Key](https://www.drupal.org/project/key) entities rather than pasting the raw
secrets into the form. The publishable key is not secret.

## Test before going live

In **Test** mode with your Stripe test keys and a test webhook, place an order and complete
payment on Stripe's hosted page. Confirm the order is marked paid only after the callback,
and use Stripe's webhook tester to confirm forged/unsigned requests are rejected once the
signing secret is set. Then switch to **Live** mode with your live keys and live webhook
secret.
