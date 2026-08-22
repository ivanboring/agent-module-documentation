# Configuration

Commerce USAePay is configured as a standard Drupal Commerce payment gateway.

## Store your USAePay credentials as secrets

Your USAePay **source key** and **PIN** are credentials. Keep them out of committed
configuration. On a DDEV project, store them in environment variables and expose
them through Key entities:

1. Save the credentials into DDEV's environment file (never commit `.ddev/.env`):

   ```bash
   ddev dotenv set .ddev/.env --usaepay-source-key=YOUR_KEY --usaepay-pin=YOUR_PIN
   ddev restart
   ```

2. Confirm they are set **without printing their values**:

   ```bash
   ddev exec 'test -n "$USAEPAY_SOURCE_KEY" && test -n "$USAEPAY_PIN"'   # exit 0 means both set
   ```

3. Install **Key** if needed and create Keys that read the variables:

   ```bash
   ddev composer require drupal/key
   ddev drush en key -y
   ddev drush key:save usaepay_source_key --label='USAePay Source Key' \
     --key-type=authentication --key-provider=env \
     --key-provider-settings='{"env_variable":"USAEPAY_SOURCE_KEY","base64_encoded":false,"strip_line_breaks":true}' \
     --key-input=none -y
   ```

If the gateway form only offers plain text fields, reference the variables from
`settings.php` via `getenv('USAEPAY_SOURCE_KEY')` rather than committing them.

## Add the USAePay payment gateway

1. Go to **Commerce → Configuration → Payment gateways**
   (`/admin/commerce/config/payment-gateways`) and click **Add payment gateway**.
2. Choose the **USAePay** plugin.
3. Enter your **source key** and **PIN** (use the Keys you created where the form
   allows it).
4. Set the gateway **mode** to test/sandbox while you set up, then switch to live
   for production.
5. Save.

## Test vs live

Use USAePay's sandbox credentials and the gateway's test mode first. Place a
**test order** and complete a card payment; because the outcome is read from the
API's `ResultCode`, an approved test transaction confirms the wiring end to end.
Then switch to live credentials and live mode.

## Security recap

- Payment handling is **server‑authoritative**: the transaction is submitted to
  USAePay's API server‑side and the outcome is read from the API `ResultCode`, not
  from a client‑supplied field.
- This is an **on‑site** gateway that handles card data — meet your **PCI**
  obligations: serve over HTTPS and consider tokenization to keep the PAN off your
  server.
- Keep the **source key and PIN** in environment variables / Keys, never in
  committed config.
