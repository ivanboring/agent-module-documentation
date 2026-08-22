# Configuration

Setting this module up is a two-part job: first give Drupal your ActiveCampaign
credentials (through the ActiveCampaign API module), then map the fields on your
contact form to the fields in your ActiveCampaign account. Until both are done,
submissions are not sent anywhere.

## Step 1 — store your API credentials securely

Your ActiveCampaign **API URL** and **API key** are secrets. Do not paste the key
directly into configuration that could be exported or committed to version
control. The recommended pattern is to keep it in an environment variable and
reference it through a **Key** entity.

Using DDEV, save the value into the project's dotenv file and restart so the
container picks it up:

```bash
ddev dotenv set .ddev/.env --activecampaign-api-key=<your-key>
ddev restart
```

The flag `--activecampaign-api-key` becomes the environment variable
`ACTIVECAMPAIGN_API_KEY`. Never commit `.ddev/.env`.

Then, if the Key module isn't already enabled, add it and create a Key that reads
from that environment variable:

```bash
ddev composer require drupal/key
ddev drush en key -y
ddev drush key:save activecampaign_api_key \
  --label='ActiveCampaign API Key' \
  --key-type=authentication --key-provider=env \
  --key-provider-settings='{"env_variable":"ACTIVECAMPAIGN_API_KEY","base64_encoded":false,"strip_line_breaks":true}' \
  --key-input=none -y
```

Now open the **ActiveCampaign API** module's settings and point it at your
account URL and, where it supports a Key, at the `activecampaign_api_key` Key you
just created. If that module only accepts a plain value, at minimum keep the key
out of committed configuration.

## Step 2 — map contact-form fields to ActiveCampaign

The custom fields you receive the data into must already exist in ActiveCampaign
before you can map to them, so create those first in your ActiveCampaign account.

On the Drupal side, this module lets you **manually map** the fields on a core
contact form to the corresponding ActiveCampaign fields. Work through the mapping
form and pair each contact-form field (name, email, and any extra fields you have
added to the form) with the ActiveCampaign field that should hold it. Only fields
you map are forwarded — anything left unmapped is simply not sent.

## Permissions

The module provides its own permissions. Review them at **People → Permissions**
(`/admin/people/permissions`) and grant the configuration/mapping permission only
to trusted administrator roles, since it governs how submitted data leaves your
site for a third-party service.

## Save and test

After saving the credentials and the field mapping, submit a test contact form.
A new contact (or an update to an existing one) should appear in ActiveCampaign
with the mapped fields populated. If nothing arrives, re-check the API URL and
key, confirm the ActiveCampaign fields exist, and confirm the mapping is saved.
