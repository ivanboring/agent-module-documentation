# Configuration

Commerce Rave is configured by adding a Commerce **payment gateway**. It has no
separate settings page, and it stays inactive until you add the gateway and enter
your Rave keys.

## Store your Rave keys safely first

Flutterwave gives you a **public key** and a **secret key**. The secret key in
particular must be protected like a password — **never commit it to Git or paste
it into configuration you export**.

On a DDEV site the recommended pattern is an environment variable referenced
through a Key entity:

```bash
# Store the secret key in DDEV's env file (never commit .ddev/.env)
ddev dotenv set .ddev/.env --rave-secret-key=<value>
ddev restart
```

With the [Key](https://www.drupal.org/project/key) module enabled, create a Key
that reads the `RAVE_SECRET_KEY` environment variable and select it on the gateway
form instead of pasting the raw secret.

## Add the payment gateway

1. Log in as a user who can administer Commerce configuration.
2. Go to **Commerce → Configuration → Payment gateways**
   (`/admin/commerce/config/payment-gateways`) and click **Add payment gateway**.
3. Give it a **name** and choose the **Rave** plugin.
4. Choose the **payment flow**:
   - **Standard / iFrame** — the Rave card form is embedded in your checkout.
   - **Hosted Payment Page** — the customer is redirected to Flutterwave's hosted
     page to pay and then returned to your site.
5. Enter your **public key** and **secret key** (use the Key entity for the
   secret rather than pasting it in plain text).
6. Choose the **mode** — **Test** while integrating, **Live** only after you have
   confirmed a full test payment.
7. Save the gateway.

## How completion works (and why it's safe)

When the customer finishes paying, the module calls Rave's API to **verify the
transaction server-side** (`verifyTransaction`) and only completes the Commerce
payment if Rave itself confirms it succeeded. It does not trust the redirect back
to your site, so a shopper cannot fake a "paid" status. Be aware that the module
currently has **no webhook** (it is noted as a to-do in the code) — fulfilment
relies on this verified return flow, so make sure customers actually complete the
redirect back to your site.

## Test before going live

Run at least one full purchase in **Test** mode and confirm the order reaches a
paid/completed state before switching the gateway to **Live**. Serve checkout over
HTTPS.
