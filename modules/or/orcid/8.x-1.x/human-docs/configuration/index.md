# Configuration

Configuring ORCID means registering an OAuth application with ORCID and giving Drupal
its **client ID** and **client secret**. Because this version has documented security
problems, read the caveats at the end of this page before enabling ORCID login for
real users.

## 1. Register an ORCID OAuth application

In your ORCID account (developer tools), register an application to obtain:

- a **client ID**, and
- a **client secret**.

You will also configure the **redirect / callback URL** so ORCID returns users to
your site's callback (`/orcid/oauth`). Use an **HTTPS** URL for your site.

## 2. Store the client secret safely

The ORCID **client secret** is a credential — never hard‑code it or commit it to
version control.

If you are working in **DDEV**, save it as an environment variable:

```bash
ddev dotenv set .ddev/.env --orcid-client-secret=<value>
ddev restart
```

The flag `--orcid-client-secret` becomes the environment variable
`ORCID_CLIENT_SECRET` inside the web container. Keep `.ddev/.env` out of version
control.

Where the settings accept a **Key entity** for the secret, prefer that. Make sure the
Key module is installed (`ddev composer require drupal/key` and
`ddev drush en key -y`), confirm the variable is present in the container **without
printing its value**:

```bash
ddev exec 'test -n "$ORCID_CLIENT_SECRET"'   # exit status 0 means it is set
```

then create a Key that reads from the environment variable:

```bash
ddev drush key:save orcid_client_secret \
  --label='ORCID Client Secret' \
  --key-type=authentication \
  --key-provider=env \
  --key-provider-settings='{"env_variable":"ORCID_CLIENT_SECRET","base64_encoded":false,"strip_line_breaks":true}' \
  --key-input=none -y
```

Where a Key entity does not apply, reference the environment variable directly (for
example via `getenv('ORCID_CLIENT_SECRET')` in `settings.php`) rather than storing the
secret in exported configuration.

## 3. Enter the credentials and review permissions

Enter the client ID (and the secret, or a reference to the stored secret) in the
module's ORCID settings, then review the module's permissions under **People →
Permissions** (`/admin/people/permissions`) to control who can use ORCID login and
account linking.

## Security caveats to weigh first

This version of the module has documented flaws that directly affect this login flow.
Before enabling ORCID login for real users, make sure the following have been
addressed (they are the fixes the documentation calls for):

- **No OAuth `state` validation on the callback.** This is the core issue — it
  enables **login‑CSRF** and, for a logged‑in victim, **forced account‑linking →
  account takeover**. A patched version must generate a `state`, store it, and reject
  any callback whose `state` does not match.
- **Token/PII disclosure.** On a username collision the callback can serialise OAuth
  access/refresh tokens and user data into the page; the debug output that does this
  must be removed.
- **Weak account/token handling.** New accounts are created with an empty email and a
  password set to the token, and tokens are stored in plaintext; a fix should require
  a real email and store tokens via the Key module / encryption.
- **Cleartext endpoint.** One ORCID endpoint URL uses `http://`; all ORCID URLs
  should use **HTTPS** so the token exchange and user data are never sent in the
  clear.

Until these are fixed, treat the module as vulnerable and keep it out of production.
