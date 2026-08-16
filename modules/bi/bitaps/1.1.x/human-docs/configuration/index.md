# Configuration

Bitaps Payment is set up in its settings form and then exposed as a Basket payment
method. Because it handles payments, take the security section at the end seriously.

## 1. Enter the Bitaps credentials

Go to **Configuration → Development → Bitaps** (`/admin/config/development/bitaps`),
which requires the `access bitaps settings` permission. Enter your Bitaps
credentials, including the **secret key**, and select the currency to accept.

### Keep the secret key confidential

The secret key is used to verify callbacks from Bitaps, so it is a credential. Keep it
out of any configuration you publish or commit publicly. Where you manage
configuration in version control, prefer supplying the value from an environment
variable. With DDEV:

```bash
ddev dotenv set .ddev/.env --bitaps-secret-key=YOUR_SECRET_HERE
ddev restart
```

Never commit `.ddev/.env`, and confirm it is set without printing it:

```bash
ddev exec 'test -n "$BITAPS_SECRET_KEY" && echo set || echo missing'
```

## 2. Expose the payment method in Basket

In Basket, enable and expose the Bitaps payment method (`BasketBitaps`) so customers
can choose it at checkout.

## 3. How payment flows

- The customer completes payment on the hosted page the module serves under
  `/bitaps/...`.
- Bitaps then calls back to the module's status endpoint, which checks a SHA-256 hash
  built from the payment and the secret key before updating the payment record.
- On a confirmed payment, the module notifies Basket to finish the order.

## Security notes — read before taking real payments

This version was security-reviewed for this knowledge base and findings were recorded
about the payment-status callback. In plain terms:

- **The callback signature does not cover the payment event/status.** Every Bitaps
  notification for a given payment carries the same hash, and the "confirmed" decision
  comes from an unsigned request value — so a captured or replayed notification could
  be resent as "confirmed" to mark an order paid.
- **The hash is compared loosely** (not with a constant-time comparison), which is
  weaker than a payment path should be.
- **The callback echoes a request value unescaped**, which is a reflected
  cross-site-scripting (XSS) exposure.

Because the secret-key field is required, a properly configured site does have a
non-empty secret and the hash is not trivially forgeable from scratch — the concern is
the incomplete/weak verification, not an empty default. Even so, treat this module with
caution: review the recorded finding and the maintainers' project page, and consider
whether the callback verification meets your risk tolerance before accepting real
payments. If you rely on it, keep the secret key confidential and serve the site over
HTTPS.
