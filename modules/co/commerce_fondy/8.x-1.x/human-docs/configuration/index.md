# Configuration

Fondy is configured like any other Drupal Commerce payment gateway: you create a
gateway entity and enter the credentials Fondy gave you. There is no separate
global settings form.

## Add the gateway

1. Log in as a user who can **administer commerce payment gateways** (an
   administrator by default).
2. Go to **Commerce → Configuration → Payment gateways**
   (`/admin/commerce/config/payment-gateways`).
3. Click **Add payment gateway**.
4. Give it a **Name** (for example "Fondy") that customers may see at checkout,
   and select the **Fondy** plugin.

## Fondy credentials

Enter the values from your Fondy merchant dashboard:

- **Merchant ID** — your Fondy merchant identifier.
- **Secret key** — the secret used to sign and verify callbacks. This is what the
  module uses to confirm that a payment notification genuinely came from Fondy,
  so it must match exactly.

## Test vs live mode

Every Commerce gateway has a **Mode** setting — **Test** and **Live**. Start in
**Test** and run an end-to-end order using Fondy's test credentials before you
switch to **Live** with real ones. Save the gateway, then place a test order and
confirm the order is marked paid when you return from Fondy.

## Keep your secret key out of the codebase

The Fondy **secret key** is a credential: anyone who has it can forge valid-looking
payment notifications. Never commit it to Git or paste it into a configuration
file that is tracked in version control.

The recommended pattern on this project is to store the value in an environment
variable and reference it through a **Key** entity:

1. Save the secret into DDEV's env file (this does *not* get committed):

   ```bash
   ddev dotenv set .ddev/.env --fondy-secret-key=<your-secret>
   ddev restart
   ```

2. If the [Key module](https://www.drupal.org/project/key) is not already
   enabled, add it:

   ```bash
   ddev composer require drupal/key
   ddev drush en key -y
   ```

3. Create a Key that reads the environment variable, then reference that Key from
   the gateway configuration where the module supports it.

## How the payment is confirmed (why this gateway is safe)

You do not configure anything here, but it is worth understanding: when a shopper
returns from Fondy — and when Fondy posts its background notification — the module
verifies the response **signature** against your secret key and checks that the
**amount** in the callback equals the order amount. Only then does it complete the
payment, and it completes it using the **order's own total**, never a figure taken
from the callback. A tampered or unsigned callback is rejected. This is the
correct, defensive behavior for an off-site gateway, so there is nothing you need
to harden yourself beyond keeping the secret key confidential.
