# Configuration

Evercurrent's configuration is small: it needs the **API key** that ties your site to
your Evercurrent account, and it lets you set the **endpoint** the reports are sent to.
The care here is mostly about treating that key as a secret and making sure only your
production site reports.

## Get your API key

1. Log in or create an account at
   [Evercurrent](https://www.drupal.org/project/evercurrent).
2. Create a new **site** in Evercurrent. You will be given an **API key** for it.

## Store the API key securely

The API key is a credential — do not commit it to version control. With DDEV, store it
as an environment variable:

```bash
ddev dotenv set .ddev/.env --evercurrent-api-key=<your-api-key>
ddev restart
```

That exposes it inside the web container as `EVERCURRENT_API_KEY` (keep `.ddev/.env`
out of version control). Reference it from `settings.php` with
`getenv('EVERCURRENT_API_KEY')` so the key lives only on the production environment and
is not carried in exported configuration.

## Enter the settings

On the module's settings form:

- **API key** — paste (or reference from the environment) the key from your Evercurrent
  site. This authenticates your site's reports.
- **Endpoint** — the Evercurrent server URL that reports are sent to. Leave it at your
  trusted Evercurrent endpoint and ensure it is **HTTPS** — the report contains
  version-fingerprinting data about your site, so it should only travel encrypted to a
  host you trust.

Save the form.

## Keep non-production environments quiet

Evercurrent expects **one API key per environment**. If you copy your site to
development or staging, you do not want those copies reporting updates under the
production key. The recommended approach (per the module's README) is to set the API
key in **`settings.php` on the production site only**, so development environments have
no key and therefore do not report. Using the environment-variable approach above
naturally achieves this, since the variable is only set on production.

## Verify

Once the key is saved, your site will report its needed updates to Evercurrent. Confirm
the site appears on your Evercurrent dashboard and that update notifications begin to
arrive.
