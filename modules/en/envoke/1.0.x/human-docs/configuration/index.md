# Configuration

Configuring Envoke comes down to one essential thing — giving Drupal your Envoke
**API key** so it can authenticate — done in a way that keeps that key out of your
codebase.

## Store the API key as a secret (do this first)

The Envoke API key is a credential. Never paste it directly into settings that get
exported to configuration, and never commit it to the repository. Store it in an
environment variable and reference it through a Key entity.

With DDEV, save the value into the container's environment and restart:

```bash
ddev dotenv set .ddev/.env --envoke-api-key=<your-key>
ddev restart
```

The flag `--envoke-api-key` becomes the environment variable `ENVOKE_API_KEY`.
Keep `.ddev/.env` out of version control.

Then confirm the variable is present *without printing its value*, and create a Key
entity backed by it (install the [Key](https://www.drupal.org/project/key) module
first if it isn't already enabled):

```bash
ddev exec 'test -n "$ENVOKE_API_KEY"'   # exit status 0 means it is set
ddev drush key:save envoke_api_key \
  --label='Envoke API Key' --key-type=authentication --key-provider=env \
  --key-provider-settings='{"env_variable":"ENVOKE_API_KEY","base64_encoded":false,"strip_line_breaks":true}' \
  --key-input=none -y
```

## Enter the credentials on the settings form

Open the Envoke settings form under **Configuration** (in the Mail area) and supply
the API credentials. Where the form offers a choice, select the **Key** you created
above rather than typing the raw key into a text field, so the secret stays in the
environment and out of exported configuration.

## Data‑handling caveats

- **Personal data leaves your site.** When Drupal sends mail or manages subscribers
  through Envoke, recipient and subscriber details (email addresses and any other
  personal data) plus the message content are transmitted to Envoke's API. Disclose
  this egress in your privacy policy and make sure your data‑processing agreements
  cover it.
- **Use HTTPS.** Traffic to the Envoke API should always go over HTTPS so
  credentials and recipient data are encrypted in transit.

## Control who can use it

The module provides its own permission. At **People → Permissions**
(`/admin/people/permissions`), grant it only to the roles that should be allowed to
send through Envoke or manage subscribers.

## Save

Save the settings form. Then send a test message and confirm it is delivered
through Envoke before routing production mail through the module.
