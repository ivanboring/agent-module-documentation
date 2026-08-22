# Configuration

Configuring Commerce MoMo Payments means adding one gateway per MoMo payment type
you want to offer and entering the credentials from your MoMo merchant account.

## Add the payment gateway(s)

1. Log in as a user who can administer Commerce.
2. Go to **Commerce → Configuration → Payment gateways**
   (`/admin/commerce/config/payment-gateways`).
3. Click **Add payment gateway**.
4. Give it a **Name** and choose one of the MoMo plugins — **MoMo Wallet**,
   **MoMo Pay with ATM**, or **MoMo Credit Card**. Repeat to offer more than one.

## The settings, field by field

- **Partner code** — your MoMo partner code.
- **Access key** — your MoMo access key.
- **Secret key** — the key used to **sign** outbound requests and **verify** the
  HMAC-SHA256 signature on responses. This is the sole signing key, so it must be
  kept confidential.
- **API endpoint / mode** — set the MoMo API endpoint to match the mode you are
  using (MoMo's sandbox endpoint for testing, the live endpoint for production).
  Make sure the endpoint matches the selected mode.

Save the gateway. Provide MoMo with your **IPN URL** (the server-to-server
notification endpoint); the return URL is the standard Commerce checkout return.

## Keep your secret key secret

The MoMo secret key is the only thing standing between you and forged payment
messages — treat it like a password:

- Don't commit it to version control.
- Prefer storing it in an environment variable rather than hard-coding it. With
  DDEV you can set it once with the built-in dotenv command:

  ```bash
  ddev dotenv set .ddev/.env --momo-secret-key='<your secret key>'
  ddev restart
  ```

  Keep `.ddev/.env` out of version control.
- Always serve checkout over **HTTPS**.

## Security note — read before going live

The good news is that the return and IPN handlers **do verify the HMAC-SHA256
signature** with your secret key, so an attacker cannot simply forge a MoMo
success message out of thin air.

However, in this release the verification has a gap worth understanding:

- The signature check **does not bind the verified payload to the specific order**
  being completed — the order argument is ignored, and the signed `orderId` /
  `amount` are not compared against the order the payment is applied to.
- The IPN handler (`onNotify()`) carries an explicit "should verify amount and
  currency" TODO and does not check the paid amount.

In principle this allows **cross-order replay** — a genuine, validly signed MoMo
success payload could be replayed against a different order's return/notify
endpoint. Any real exploit still requires a genuine paid MoMo transaction, but you
should weigh this before deploying as-is: consider reconciling MoMo payments
against expected order amounts out of band, restricting use until the binding is
tightened, or applying a fix that checks the signed `orderId` and `amount` against
the order.

## Test before going live

With the sandbox endpoint and test credentials, run a full checkout for each MoMo
type you offer and confirm the payment records against the order. Switch to the
live endpoint and credentials only once the sandbox flow works cleanly.
