# Configuration

Commerce PayUMoney is configured as a **payment gateway**, plus a small amount of
profile-field preparation. There is no central settings form — you create a
PayUMoney gateway and Commerce offers it at checkout.

> ## ⚠️ Security warning
>
> Before you configure this for a live store, re-read the security warning on the
> [overview page](../index.md). In this version the callback endpoints are
> anonymous and the shipped hash check does not actually verify PayU's response,
> so a forged "success" callback can mark an order paid. Treat this module as
> **not production-ready until a developer implements PayU's reverse-hash
> (SHA-512) verification and binds the payment amount to the order total.**

## Prepare the customer profile

The gateway pulls buyer details from a customer profile, so before adding the
gateway make sure the profile is ready:

1. Decide which profile type to use — the default machine name is **`customer`**.
2. That profile type must have an **Address** entity/field.
3. Add a **phone field** to it with the machine name **`field_phone`** if one does
   not already exist (Structure → your profile type → Manage fields).

## Add the PayUMoney gateway

1. Log in as a user who can administer payment gateways.
2. Go to **Commerce → Configuration → Payment gateways**
   (`/admin/commerce/config/payment-gateways`) and click **Add payment gateway**.
3. Give it a **Name** (for example, "PayUMoney").
4. Choose the **PayUmoney Redirect** plugin.

## Fill in the fields

- **Merchant key** — your PayUMoney merchant key.
- **Salt** — your PayUMoney merchant salt (the value used in PayU's hash
  calculation).
- **Profile** — the machine name of the customer profile to read buyer details
  from (default `customer`). The selected profile must have the Address entity and
  the `field_phone` field described above.
- **Mode / environment** — use test credentials while setting up and switch to
  live only when ready.

## The callback URLs

PayU posts results back to these endpoints on your site:

- `/payment/notify/payumoney` — server-to-server notification (POST only)
- `/payment/success/payumoney` — success return
- `/payment/failure/payumoney` — failure return

Configure the corresponding URLs in your PayUMoney dashboard where required.

## Keep your credentials safe

The merchant key and salt are credentials and, like all Commerce gateway
settings, are stored in configuration. Do not commit them to version control, and
restrict who can administer payment gateways and export configuration. On this
project the recommended pattern is to keep such values in environment variables
via DDEV's dotenv command and expose them to Drupal through **Key** entities
rather than typing raw secrets into exportable config:

```bash
ddev dotenv set .ddev/.env --payumoney-merchant-key=<value> --payumoney-salt=<value>
ddev restart
```

Run your site over **HTTPS** so the redirect and callback traffic is protected —
though note that HTTPS does **not** substitute for the missing signature check
described in the security warning above.

## Save

Click **Save**, then make sure the gateway is enabled in your checkout flow. Given
the security caveat, keep it disabled on any public store until the callback
verification has been implemented.
