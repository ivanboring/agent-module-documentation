# Configuration

Commerce InPost is configured as a **shipping method** in Drupal Commerce. There
is no separate global settings page — everything lives on the shipping method you
create, the same way you would set up flat‑rate or any other carrier.

## Before you start: store your API credentials safely

InPost gives you **API credentials** for your account. Treat them like any other
secret — never paste them into code you commit or into a configuration export
that lands in version control.

The recommended pattern on a DDEV site is to keep the value in an environment
variable and expose it to Drupal through a **Key** entity:

1. Save the secret into DDEV's dotenv file (this example uses a made‑up variable
   name — use one that fits your credential):

   ```bash
   ddev dotenv set .ddev/.env --inpost-api-token=<your-token>
   ddev restart
   ```

   The flag `--inpost-api-token` becomes the environment variable
   `INPOST_API_TOKEN`. Keep `.ddev/.env` out of version control.

2. If you don't already use the **Key** module, add it:

   ```bash
   ddev composer require drupal/key
   ddev drush en key -y
   ```

3. Create a Key that reads the environment variable, then reference that Key from
   the shipping method rather than typing the raw secret into the form.

## Add the InPost shipping method

1. Log in as a user who can **administer Commerce shipping** (an administrator by
   default).
2. Go to **Administration → Commerce → Configuration → Shipping methods**
   (`/admin/commerce/config/shipping-methods`).
3. Click **Add shipping method**.
4. Give it a **Name** customers will recognize at checkout (for example
   "InPost parcel locker").
5. Under the plugin selector, choose **InPost**.

## Fill in the InPost settings

The InPost plugin exposes the settings the integration needs. Work through them:

- **API credentials** — enter (or reference, via the Key created above) the API
  token / merchant credentials from your InPost account. This is what authorizes
  the module to request rates and locker data from InPost.
- **Mode / environment** — choose **test** (sandbox) while you are setting things
  up, and switch to **live/production** only once you have confirmed real quotes
  and the pickup‑point selection behave as expected. Getting this wrong means
  either failing test transactions against the live service or "successful"
  orders that were never really booked.
- **Parcel‑locker options** — settings related to offering Paczkomat delivery and
  letting the customer select a pickup locker during checkout.
- **Rating / conditions** — standard Commerce shipping‑method options such as the
  stores and order conditions under which this method is offered.

## Save and test end to end

Click **Save**. Then place a test order: add a product, go to checkout, and
confirm that **InPost** appears as a shipping choice, that a rate is returned,
and (for locker delivery) that you can pick a pickup point. Because address and
parcel details are transmitted to InPost to produce a quote, verify this against
the **test** environment first, and only move to live once the whole flow works.
