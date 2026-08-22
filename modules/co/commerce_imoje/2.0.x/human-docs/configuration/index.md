# Configuration

imoje is configured as a standard Drupal Commerce payment gateway, with a matching
setup step in the imoje panel so notifications reach your site.

## Add the gateway

1. Log in as a user who can **administer commerce payment gateways**.
2. Go to **Commerce → Configuration → Payment gateways**
   (`/admin/commerce/config/payment-gateways`) and click **Add payment gateway**
   (or navigate to `/admin/commerce/config/payment-gateways/add`).
3. Give it a **Name** and select the **imoje** plugin (off-site redirect) and/or
   the **imoje Blik** plugin (on-site BLIK), depending on which methods you offer.
4. Enter your imoje credentials — the API key/token, the service (merchant) ID,
   and any related identifiers from your imoje account.
5. Set the **Mode** to test while integrating, then to live for production, and
   save.

## Configure the imoje panel

In your imoje merchant panel, enter the **notification address** (the callback URL
where imoje posts payment notifications to your site) along with the required
credentials. This step is essential — the order is completed when imoje's signed
notification reaches your site, so without the correct notification address
configured, payments will not be confirmed.

## Store credentials securely

Your imoje API credentials and service key are secrets — keep them out of version
control. Store each value in an environment variable and reference it through a
**Key** entity where the module supports one:

```bash
ddev dotenv set .ddev/.env --imoje-api-key=<your-key>
ddev restart
```

If the [Key module](https://www.drupal.org/project/key) is not enabled yet, add it
with `ddev composer require drupal/key && ddev drush en key -y`, then create a Key
that reads the environment variable.

## How payments are confirmed (why this is safe)

When imoje posts its payment notification (IPN), the module validates the
`X-Imoje-Signature` header — a SHA-256 of the payload plus your service key —
**before** it completes the order, and rejects the notification (throws) on any
mismatch. This means an order is only marked paid when the notification is proven to
have come from imoje, which is the correct defensive pattern. Beyond keeping your
credentials confidential and setting the notification address correctly in the
imoje panel, there is nothing extra to harden.

## Refunds

You can issue refunds for imoje payments directly from the Drupal order/payment
admin interface — no need to log into the imoje panel for routine refunds.
