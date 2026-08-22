# Configuration

Configuring Ephoto DAM has two parts: connecting Drupal to your Ephoto DAM account
with API credentials (stored safely), and enabling the asset‑insertion tools for
editors.

## Store the API credentials as secrets (do this first)

The Ephoto DAM API credentials are secrets. Do not commit them to the repository or
place them in exported configuration. Store them in an environment variable and
reference them through a Key entity.

With DDEV, save the value and restart:

```bash
ddev dotenv set .ddev/.env --ephoto-dam-api-key=<your-key>
ddev restart
```

The flag `--ephoto-dam-api-key` becomes the environment variable
`EPHOTO_DAM_API_KEY`. Keep `.ddev/.env` out of version control.

Confirm the variable is present *without printing its value*, then create a Key
entity backed by it (install the [Key](https://www.drupal.org/project/key) module
first if it isn't already enabled):

```bash
ddev exec 'test -n "$EPHOTO_DAM_API_KEY"'   # exit status 0 means it is set
ddev drush key:save ephoto_dam_api_key \
  --label='Ephoto DAM API Key' --key-type=authentication --key-provider=env \
  --key-provider-settings='{"env_variable":"EPHOTO_DAM_API_KEY","base64_encoded":false,"strip_line_breaks":true}' \
  --key-input=none -y
```

## Enter the connection details

Open the Ephoto DAM settings under **Configuration** and supply the connection
details for your account — the API endpoint/URL and credentials. Where the form
supports it, reference the **Key** you created rather than typing the raw
credential into a text field. Use HTTPS for the endpoint so credentials and asset
requests are encrypted in transit.

## Enable asset insertion for editors

### CKEditor 5

To let editors insert Ephoto assets while writing, add the Ephoto DAM button to a
text format's editor toolbar:

1. Go to **Configuration → Content authoring → Text formats and editors**
   (`/admin/config/content/formats`).
2. Edit the text format your editors use (for example *Full HTML*).
3. In the **CKEditor 5** toolbar configuration, drag the Ephoto DAM button into the
   active toolbar.
4. Save. Editors using that format now get an Ephoto DAM control for searching the
   library and inserting an asset.

### Field (optional)

If you enabled the **Ephoto DAM Field** submodule, add an Ephoto DAM field to a
content type at **Structure → Content types → *(type)* → Manage fields**, then
configure its form and display like any other field.

## Data‑handling note

Assets are **hosted and served by Ephoto**, a third party. Drupal references them
against the Ephoto DAM service, so browsing the library and (depending on
configuration) delivering assets involves requests to Ephoto, and availability
depends on that service. Bear this dependency in mind for performance, privacy, and
uptime, and make sure your data‑processing agreements cover the integration.

## Save

Save the settings form. Then create or edit a piece of content, search your Ephoto
library, and insert an asset to confirm the connection works end to end.
