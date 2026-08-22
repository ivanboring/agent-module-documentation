# Configuration

Configuring Epsilon Harmony is chiefly about giving Drupal the Harmony **API
credentials** so it can authenticate — stored so they stay out of your codebase —
and knowing where the debug logs live.

## Store the API credentials as secrets (do this first)

The Epsilon Harmony API credentials are secrets. Do not commit them to the
repository or place them in exported configuration. Store them in environment
variables and reference them through a Key entity — the module's own guidance is
that credentials should be environment‑backed and never committed.

With DDEV, save the value and restart:

```bash
ddev dotenv set .ddev/.env --epsilon-harmony-api-key=<your-key>
ddev restart
```

The flag `--epsilon-harmony-api-key` becomes the environment variable
`EPSILON_HARMONY_API_KEY`. Keep `.ddev/.env` out of version control.

Confirm the variable is present *without printing its value*, then create a Key
entity backed by it (install the [Key](https://www.drupal.org/project/key) module
first if it isn't already enabled):

```bash
ddev exec 'test -n "$EPSILON_HARMONY_API_KEY"'   # exit status 0 means it is set
ddev drush key:save epsilon_harmony_api_key \
  --label='Epsilon Harmony API Key' --key-type=authentication --key-provider=env \
  --key-provider-settings='{"env_variable":"EPSILON_HARMONY_API_KEY","base64_encoded":false,"strip_line_breaks":true}' \
  --key-input=none -y
```

## Enter the connection details

Open the Epsilon Harmony settings under **Configuration** and supply the Harmony API
connection details — the endpoint(s) and credentials Epsilon issued you. Where the
form supports it, reference the **Key** you created rather than typing the raw
credential into a text field. Use HTTPS for the endpoint so credentials and data are
encrypted in transit.

## The debug log (Views)

Every request the module sends to Harmony and every response it receives is
**logged to the database**, and those records are surfaced through a **Views**
listing. Use it to troubleshoot — you can see exactly what was sent and what Epsilon
returned. Because these logs can contain the profile/message data that was
exchanged, treat access to the log view as sensitive and prune it appropriately over
time.

## Data‑handling note

The data you push through this module — profile records and real‑time messages —
**leaves your site for Epsilon's platform**. Disclose this egress in your privacy
policy and make sure your data‑processing agreements cover it.

## Control who can use it

The module provides its own permission. At **People → Permissions**
(`/admin/people/permissions`), grant it only to the roles that should administer the
integration or view its logs.

## Save

Save the settings form, then run a test API call from your integration and confirm
in the log view that it succeeded before relying on it in production.
