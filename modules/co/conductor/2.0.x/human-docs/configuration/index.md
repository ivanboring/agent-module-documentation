# Configuration

Writing Assistant needs your **Conductor API key** before it can do anything. The
module uses the **Key** module to hold that credential securely, so the
recommended flow is: put the key value in an environment variable, create a Key
entity that reads it, then point the module at that Key.

## 1. Get your Conductor API key

Obtain an API key from your Conductor account —
<https://www.conductor.com/lp/content-insights-drupal/>. Keep it handy but do not
paste it into any file you commit to version control.

## 2. Store the key as an environment variable (recommended)

Never hard-code or commit the secret. With DDEV, save it into the container's
environment:

```bash
ddev dotenv set .ddev/.env --conductor-api-key="<your-key>"
ddev restart
```

The flag `--conductor-api-key` becomes the environment variable
`CONDUCTOR_API_KEY`. Keep `.ddev/.env` out of version control. Confirm it's set
**without printing its value**:

```bash
ddev exec 'test -n "$CONDUCTOR_API_KEY"'   # exit status 0 means it is set
```

## 3. Create a Key entity backed by that variable

The Key module is installed as a dependency. Create a Key that reads the
environment variable using Key's built-in `env` provider:

```bash
ddev drush key:save conductor_api_key \
  --label='Conductor API Key' \
  --key-type=authentication \
  --key-provider=env \
  --key-provider-settings='{"env_variable":"CONDUCTOR_API_KEY","base64_encoded":false,"strip_line_breaks":true}' \
  --key-input=none -y
```

You can also create the Key through the UI at **Configuration → System → Keys**
(`/admin/config/system/keys`) if you prefer.

## 4. Connect the module to the Key

1. Open the Writing Assistant configuration page (as a user with the module's
   admin permission).
2. Select the **Conductor API Key** you just created as the credential the module
   should use.
3. Save.

## Verify and mind the data-flow

Open a content item in **Canvas** — Conductor's writing/SEO guidance should now
appear. Remember that content or topic data may be sent to Conductor's service for
analysis; review that against your organisation's data-handling and privacy
policies.
