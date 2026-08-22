# Configuration

Commerce Omise is configured as a **Commerce payment gateway**. There is no separate
global settings page.

## Store your API credentials securely

Your Omise API keys are secrets — never hard‑code or commit them. With DDEV, keep
each value in an environment variable and load it through a Key entity:

```bash
ddev dotenv set .ddev/.env --omise-secret-key=<value>
ddev restart
```

Install the Key module if it isn't enabled, then reference the variable from a Key
entity so the secret never lives in exported configuration.

## Add the Omise payment gateway

1. Go to **Commerce → Configuration → Payment gateways**
   (`/admin/commerce/config/payment-gateways`) and click **Add payment gateway**.
2. Choose the **Omise** plugin.
3. Enter your Omise API credentials (reference the Key entities above) and choose
   **Test** or **Live** mode.
4. Save. Only trusted roles should be able to administer payment gateways.

## Important: the webhook is unverified in this version

This is the most important thing to understand before using Commerce Omise for real
money.

As shipped in this development version (8.x‑1.x‑dev), the module's webhook handler
reads the charge id and status straight from the incoming POST body and marks the
matching Commerce payment **completed** whenever that body says the status is
`successful`. It does **not**:

- verify any signature on the webhook, and
- re-fetch the charge from Omise's API to confirm the status server-side.

The webhook route is publicly reachable (it has to be, so Omise can call it). Taken
together, this means an attacker who knows their own charge id can send a forged
request like `{"data":{"id":"…","status":"successful"}}` to your webhook URL and have
the order fulfilled **without paying**. This is an unauthenticated
payment-completion forgery.

**Do not use this version in production as-is.** Before relying on it, the webhook
must be hardened so that it re-fetches the charge from Omise
(`OmiseCharge::retrieve($id)`) and completes the payment **only** when Omise's own
API reports the charge as `successful` — never trusting the status in the request
body. Track the project's issue queue for a fix, and until then treat any "paid"
result as unconfirmed and reconcile against your Omise dashboard.

## Test first

Whatever state the webhook handling is in, run in **Test** mode and confirm that a
successful checkout corresponds to a genuine, correctly-priced Omise charge before
switching to live.
