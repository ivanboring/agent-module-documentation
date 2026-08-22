# Configuration

You configure Commerce TaxJar by adding a **TaxJar tax type** in Commerce and
connecting it to your TaxJar account with an API token.

## Store your TaxJar API token as a secret

Your TaxJar API token is a credential — anyone who has it can query your TaxJar
account. Do not paste it into plain configuration that gets exported or committed.
The safe pattern on a DDEV project is an environment variable plus a Key entity:

1. Save the token into DDEV's environment file (never commit `.ddev/.env`):

   ```bash
   ddev dotenv set .ddev/.env --taxjar-api-token=YOUR_TOKEN_HERE
   ddev restart
   ```

   The flag `--taxjar-api-token` becomes the variable `TAXJAR_API_TOKEN` in the
   web container.

2. Confirm the variable is present **without printing its value**:

   ```bash
   ddev exec 'test -n "$TAXJAR_API_TOKEN"'   # exit status 0 means it is set
   ```

3. Install the **Key** module if it isn't already, and create a Key that reads the
   environment variable:

   ```bash
   ddev composer require drupal/key
   ddev drush en key -y
   ddev drush key:save taxjar_api_token --label='TaxJar API Token' \
     --key-type=authentication --key-provider=env \
     --key-provider-settings='{"env_variable":"TAXJAR_API_TOKEN","base64_encoded":false,"strip_line_breaks":true}' \
     --key-input=none -y
   ```

You can then select this Key on the tax‑type form where it asks for the token,
rather than typing the raw value. (If the version you run only offers a plain text
field, reference the environment variable from `settings.php` via
`getenv('TAXJAR_API_TOKEN')` instead of committing the token.)

## Add and configure the TaxJar tax type

1. Go to **Commerce → Configuration → Tax types**
   (`/admin/commerce/config/tax-types`) and click **Add tax type**.
2. Choose the **TaxJar** plugin.
3. Enter (or select the Key for) your **TaxJar API token**.
4. Configure your **nexus** — the states/jurisdictions where you are obligated to
   collect sales tax — as required by your TaxJar setup.
5. If you use **Commerce Shipping** or **Commerce Discount**, confirm the relevant
   options so shipping and discounts are taxed correctly for your jurisdictions.
6. Save the tax type.

## Test vs live

Point the connection at TaxJar's sandbox while you set things up, then switch to
your live token for production. Always place a **test order** and confirm the
calculated tax — including for a shipping charge and a discounted order — matches
what TaxJar reports before you go live.

## Security recap

- The module **sends order addresses and amounts to TaxJar** to compute tax — this
  external egress is how the service works.
- Keep the **API token** in an environment variable / Key, never in committed
  config, and serve the site over HTTPS.
