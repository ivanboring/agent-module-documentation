# Configuration

Dropfort Update's configuration connects this site to your Dropfort account so it
can report update information there.

## Open the settings form

1. Log in as a user with the module's Dropfort administration permission (grant it
   on **People → Permissions**, `/admin/people/permissions`).
2. Go to the **Dropfort Update** settings form under **Configuration** (route
   `dropfort_update.settings`).

## Settings

- **Dropfort connection / credentials** — the details that authenticate this site
  to your Dropfort account (the API key or token, and any endpoint or site
  identifier Dropfort provides). These identify the site to the dashboard and
  authorize it to report data. Get them from your Dropfort account after
  registering the site there.
- **Reporting options** — any options the form offers for what is sent or when. By
  default the module reports the site's status report (installed modules/themes,
  their versions, and available updates) collected via core's Update module.

Click **Save configuration** when you're done.

## Store the credentials securely

The Dropfort credential authorizes reporting on this site's behalf, so keep it out
of committed and exported configuration. Store it in an environment variable and
reference it (for example via a **Key** entity or from `settings.php` with
`getenv()`). With DDEV:

```bash
ddev dotenv set .ddev/.env --dropfort-api-key=<your-key>
ddev restart
ddev exec 'test -n "$DROPFORT_API_KEY"'   # exit status 0 means it is set
```

(never commit `.ddev/.env`).

## What gets sent, and why it's sensitive

Dropfort Update transmits a detailed inventory of your site: which modules and
themes are installed, their exact versions, and which updates are available. That
inventory is sensitive in its own right — it maps out the site's precise attack
surface — so:

- send it only to a **Dropfort account you trust**;
- make sure the connection is **authenticated** and carried over **HTTPS**;
- treat the credential as a secret, as above.
