# Configuration

Drip webform handler is configured **per webform**, not on a global admin page.
You add the Drip handler to each form you want to connect and set its options
there. The one thing to sort out first is where your Drip API key lives.

## Store the Drip API key as a secret

Your Drip API key is a credential — anyone holding it can read and write your Drip
account — so keep it out of exported configuration and out of version control.
The recommended pattern is an environment variable surfaced through a **Key**
entity:

1. Save the key as an environment variable with DDEV's dotenv command (never
   commit `.ddev/.env`):

   ```bash
   ddev dotenv set .ddev/.env --drip-api-key=<your-key>
   ddev restart
   ```

   The flag `--drip-api-key` becomes the variable `DRIP_API_KEY` inside the web
   container.

2. Confirm the variable is present **without printing its value**:

   ```bash
   ddev exec 'test -n "$DRIP_API_KEY"'   # exit status 0 means it is set
   ```

3. If the **Key** module isn't already enabled, add it, then create a Key backed
   by that environment variable:

   ```bash
   ddev composer require drupal/key
   ddev drush en key -y
   ddev drush key:save drip_api_key --label='Drip API Key' \
     --key-type=authentication --key-provider=env \
     --key-provider-settings='{"env_variable":"DRIP_API_KEY","base64_encoded":false,"strip_line_breaks":true}' \
     --key-input=none -y
   ```

You can then reference the `drip_api_key` Key from the handler settings instead of
pasting the raw value. (If the handler only accepts a plain text field for the
key, at minimum keep the value out of committed/exported config and rotate it if
it ever leaks.)

## Add the Drip handler to a webform

1. Go to **Structure → Webforms** (`/admin/structure/webform`) and edit the form
   you want to connect.
2. Open **Settings → Emails / Handlers**
   (`/admin/structure/webform/manage/{webform}/handlers`).
3. Click **Add handler**, choose **Drip**, and give it a title.

## Handler settings

- **Drip API credentials** — supply your Drip API key (referencing the Key entity
  above where possible) and, if the form asks for it, your Drip account ID. These
  authenticate the requests this handler sends to Drip.
- **Field mapping** — map the webform's fields (email address, name, and any other
  data you collect) to the corresponding Drip subscriber fields, so each
  submission creates or updates the right record in Drip.
- **When it fires** — the handler runs on matching submissions; review the
  handler's conditions if you only want certain submissions sent to Drip.

Save the handler, then submit a test entry and confirm the subscriber/record
appears in your Drip account.

## A note on outbound traffic

This handler makes an outbound HTTPS request to Drip's API on each qualifying
submission. If your environment restricts egress, allow the Drip API endpoint so
submissions can reach it.
