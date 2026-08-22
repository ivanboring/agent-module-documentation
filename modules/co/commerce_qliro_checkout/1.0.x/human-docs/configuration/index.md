# Configuration

Commerce Qliro Checkout is configured the way every Commerce payment method is:
by adding a **payment gateway**. Until you do this and enter valid Qliro
credentials, the module does nothing.

## Store your Qliro API credentials safely first

Qliro gives you API credentials (an API key / secret) that let your site talk to
its Merchant API. Treat these like passwords — **never paste them into code or
commit them to Git**, and avoid exporting them in plain configuration.

The recommended pattern on a DDEV site is to keep the secret in an environment
variable and reference it through a Key entity:

```bash
# Store the secret in DDEV's env file (never commit .ddev/.env)
ddev dotenv set .ddev/.env --qliro-api-secret=<value>
ddev restart
```

Then, with the [Key](https://www.drupal.org/project/key) module enabled, create a
Key that reads from the `QLIRO_API_SECRET` environment variable and select that
Key wherever the gateway form asks for the secret. This keeps the credential out
of your configuration export.

## Add the payment gateway

1. Log in as a user who can administer Commerce configuration.
2. Go to **Commerce → Configuration → Payment gateways**
   (`/admin/commerce/config/payment-gateways`) and click **Add payment gateway**.
3. Give it a **name** customers won't necessarily see (for example "Qliro
   Checkout") and choose the **Qliro Checkout** plugin.
4. Enter your **Qliro API credentials** (merchant API key / secret). Use the Key
   entity you created above rather than pasting the raw secret.
5. Choose the **mode** — **Test** while you are integrating, **Live** only once
   you have confirmed end-to-end payments in test.
6. Save the gateway.

## How completion works (and why it's safe)

When a shopper pays through Qliro, they are sent to Qliro's embedded checkout and
then returned to your site. The module does **not** trust the browser redirect or
the anonymous validation callback to decide whether an order was paid — in this
release that callback handler is intentionally a no-op. Instead, order state is
confirmed by calling Qliro's **server-side Merchant API**. This is the correct,
tamper-resistant design: a customer cannot mark their own order as paid by
replaying or forging a callback.

## Test before going live

Complete at least one full purchase in **Test** mode and confirm the order moves
to a paid/completed state in Commerce before switching the gateway to **Live**.
