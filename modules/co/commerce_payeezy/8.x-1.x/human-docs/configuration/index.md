# Configuration

Commerce Payeezy is configured as a Drupal Commerce **payment gateway**.

## Add the gateway

1. Go to **Administration → Commerce → Configuration → Payment gateways**
   (`/admin/commerce/config/payment-gateways`) and click **Add payment gateway**.
   (Older documentation points to `/admin/commerce/config/payment-methods`.)
2. Choose the Payeezy plugin — the **hosted (offsite)** gateway or the **on-site**
   gateway, depending on how you want customers to pay.
3. Enter your **Payeezy API credentials** (API key, API secret, merchant token, and
   the response/relay key used to verify the hosted return). You get these from your
   Payeezy developer account.
4. Choose **Test** mode while integrating and switch to **Live** for production.
5. Save, then attach the gateway to your **checkout flow**.

## Store your credentials safely

Your Payeezy keys — especially the **response/relay key** used for return
verification — are secrets. Keep the real values **out of version control**: set them
in your environment rather than committing them in exported configuration. With DDEV
you can store a secret as an environment variable and restart so the container picks
it up:

```bash
ddev dotenv set .ddev/.env --payeezy-response-key=<value>
ddev restart
```

(Never commit `.ddev/.env`.) Restrict who can administer payment gateways, and
protect your configuration exports, since gateway settings live in Drupal
configuration.

## Security caveat: verify the hosted return

This is important enough to repeat from the [overview](../index.md). In this version
the **hosted-gateway return handler does not abort when signature verification
fails**. On return it recomputes an HMAC and compares it to the value Payeezy sent,
but when the response code says "success" yet the HMAC does **not** match, the
handler merely prints "Payment was not processed" and returns **without throwing** —
so the Commerce return completes and the **order can be placed unpaid**.

The amount recorded is the server-side order total (so this is not an
amount-tampering issue), but the missing abort means a returning request claiming
success with a wrong or absent hash can finish an order without a real payment.
Additionally, the hash comparison uses PHP's loose `==` rather than a constant-time
comparison.

Recommended handling until a fix lands:

- **Reconcile every order against Payeezy** before fulfilling, rather than trusting
  the on-return state alone.
- Consider the **on-site gateway** or another gateway if you cannot reconcile.
- If you maintain a patch, make the return handler **throw a payment exception on an
  HMAC mismatch** (mirroring what it already does for a bad response code) and use
  **`hash_equals()`** for the comparison.
- Track the project's issue queue for an official fix.
