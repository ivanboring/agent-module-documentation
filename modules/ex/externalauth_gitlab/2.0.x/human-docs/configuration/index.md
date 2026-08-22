# Configuration

Configuring GitLab login is a three-part job: register an OAuth application on
GitLab, store its client secret safely, and enter the details on the module's
settings form.

## Step 1 — Register an OAuth application on GitLab

On your GitLab instance, create an OAuth application (for a self-hosted instance
this is typically under **Admin area / User settings → Applications**). You'll
need:

- A **redirect URI / callback URL** pointing back at your Drupal site — use the
  callback path the module's settings form shows, and make sure it's an **HTTPS**
  URL.
- The **scopes** the module needs to read the user's identity (at minimum enough
  to read the account email, since users are matched by email).

GitLab then gives you an **Application ID** (the client ID) and a **Secret** (the
client secret). Keep the secret handy for the next step — and treat it as a
credential, not a setting.

## Step 2 — Store the client secret safely

The client secret must never be hard-coded or committed. Follow this project's
convention: keep it in an environment variable and surface it through a **Key**
entity.

```bash
# Save the secret into DDEV's dotenv file (never commit .ddev/.env):
ddev dotenv set .ddev/.env --gitlab-oauth-secret=<the secret from GitLab>
ddev restart

# Confirm it's present in the container WITHOUT printing it:
ddev exec 'test -n "$GITLAB_OAUTH_SECRET"'   # exit status 0 means it is set
```

Then, if you're using the Key module to hold the secret, create a Key backed by
the environment variable rather than pasting the value into config:

```bash
ddev drush key:save gitlab_oauth_secret \
  --label='GitLab OAuth Secret' --key-type=authentication --key-provider=env \
  --key-provider-settings='{"env_variable":"GITLAB_OAUTH_SECRET","base64_encoded":false,"strip_line_breaks":true}' \
  --key-input=none -y
```

If the module's own settings form asks for the secret directly, prefer referencing
the environment variable / Key over pasting the raw value wherever the module
allows it.

## Step 3 — Fill in the module settings

Go to **Configuration → People → External Auth GitLab settings**
(`/admin/config/people/externalauth-gitlab-settings`) and provide:

- The **GitLab instance URL** — the base URL of the GitLab you're authenticating
  against. Point this only at a **trusted** instance, over HTTPS.
- The **Application ID / client ID** from GitLab.
- The **client secret** — supplied via the environment variable / Key from Step 2.

Save the form.

## Step 4 — Test the login

Because the module matches users **by email and does not create accounts**, make
sure a Drupal account exists whose email matches the GitLab account you'll test
with. Then go to `/user`, follow the GitLab login local task, authenticate on
GitLab, and confirm you're returned and logged in to Drupal.

## Security recap

- The OAuth flow is CSRF-safe by design: the module stores the OAuth `state` in
  the private tempstore and rejects any return whose state is missing or doesn't
  strictly match. You don't configure this — just don't undermine it.
- Keep the **client secret** out of config and version control (Step 2).
- Use **HTTPS** for the redirect URI, the GitLab instance, and your own site.
- Point the module only at a **GitLab instance you trust** — it's the authority
  deciding who gets to log in.
