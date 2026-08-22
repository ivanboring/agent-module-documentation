# Configuration

Configuring ePayco has three parts: creating one or more ePayco **settings
entities** that hold your account credentials, storing those credentials safely,
and (if you use Commerce) attaching ePayco as a payment gateway. Throughout, keep
the confirmation posture in mind — it is what makes the integration safe.

## Store the API keys as secrets (do this first)

Your ePayco keys (public key, private key, and related identifiers) are
credentials. Do not commit them to the repository or bake them into exported
configuration. Store them in environment variables and reference them through Key
entities.

With DDEV, save each value and restart:

```bash
ddev dotenv set .ddev/.env --epayco-private-key=<your-private-key>
ddev restart
```

The flag `--epayco-private-key` becomes the environment variable
`EPAYCO_PRIVATE_KEY`. Keep `.ddev/.env` out of version control. Repeat for the
other credential(s) ePayco issues.

Confirm the variable is present *without printing its value*, then create a Key
entity backed by it (install the [Key](https://www.drupal.org/project/key) module
first if it isn't already enabled):

```bash
ddev exec 'test -n "$EPAYCO_PRIVATE_KEY"'   # exit status 0 means it is set
ddev drush key:save epayco_private_key \
  --label='ePayco Private Key' --key-type=authentication --key-provider=env \
  --key-provider-settings='{"env_variable":"EPAYCO_PRIVATE_KEY","base64_encoded":false,"strip_line_breaks":true}' \
  --key-input=none -y
```

## Create an ePayco settings entity

Go to **Configuration** and create an ePayco **settings** configuration entity.
Each entity is a named set of ePayco account settings — its credentials, test/live
mode, and options — and you can create several. This is what lets you keep, say, a
default set for the site and per‑store overrides so different sellers can use their
own ePayco accounts. Reference the Key you created rather than typing raw keys into
the form.

## Test mode vs. live mode

ePayco distinguishes a **test** mode from **live** processing. Do all of your
initial setup and verification in test mode and only switch a settings entity to
live once you have confirmed an end‑to‑end transaction. Double‑check which mode each
settings entity is in before taking real payments — a settings entity left in test
mode will not charge real money, and one switched to live too early will.

## Attach ePayco to Drupal Commerce (if used)

With the **Commerce ePayco** submodule enabled, add a payment gateway at
**Commerce → Configuration → Payment gateways → Add payment gateway**, choose the
ePayco gateway, and point it at your settings entity. You can override the
pre‑defined settings per store where you want individual stores to use their own
ePayco account.

## How payment confirmation works — and keeping it safe

This is the reassuring part, and it is worth understanding so you don't accidentally
undermine it. When a customer returns from ePayco, the Commerce gateway does **not**
trust the browser's return data to mark the order paid. It **queries ePayco's API
for the transaction status** using the remote transaction id and only sets the
payment to *completed* when ePayco's own API response reports success — and the
outbound checkout request it sent was **signed**. Because the decision is made
against ePayco's server rather than the customer's request, a **forged or replayed
return cannot complete an order**.

To keep that guarantee intact:

- Never modify the gateway to complete orders directly from the return/callback
  request data instead of the API status check.
- Make sure the private key / signature credentials are configured correctly (via
  the Key above) so signing and the API status lookup actually work.
- Serve the site over **HTTPS** so credentials and payment traffic are encrypted.

## Control who can administer it

The module provides its own permissions. At **People → Permissions**
(`/admin/people/permissions`), grant ePayco administration only to trusted roles.

## Save

Save each settings entity (and the Commerce gateway, if used). Run a full test
transaction in test mode and confirm the order is marked paid only after ePayco's
API reports success before switching to live.
