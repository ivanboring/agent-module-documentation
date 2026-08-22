# Configuration

commercetools is configured on a single settings page where you connect Drupal to
your commercetools project. Once the credentials are in, the integration starts
working.

## Open the settings page

1. Log in as a user with permission to administer the site.
2. Go to **Configuration → commercetools**
   (`/admin/config/system/commercetools`).

## Connection settings, field by field

Enter the details of an API client created in your commercetools project:

- **Client ID** — the API client's identifier.
- **Client secret** — the API client's secret. This is a sensitive credential.
- **Project key** — the key of the commercetools project this site connects to.

Save the form and the integration should begin working. If you don't have
credentials yet, enable the **demo** submodule and use its **Demo** tab to deploy
a sample store instead.

## Caching

The module caches data received from commercetools to keep the storefront fast.
By default it uses a Drupal **cron** job to check for changes and invalidate
affected cache items. For instant invalidation when data changes on the
commercetools side, configure commercetools **Subscriptions** as described in the
project documentation.

## Templates and design

The provided templates use **Bootstrap** classes so the storefront looks
reasonable out of the box, but Bootstrap is not required — you can override the
templates to use your own design system. Product listings and filters can be
placed on any page using native Drupal **Blocks** and **Layout Builder**.

## Handle the credentials safely

The **Client secret** is a secret. Never commit it to code. On DDEV, store it in
an environment variable and reference it through a **Key** entity (or from
settings via `getenv()`), rather than pasting it into exported configuration:

```bash
ddev dotenv set .ddev/.env --commercetools-client-secret=<value>
ddev restart
```

Always serve the site over **HTTPS**.

## Save and test

Click **Save configuration**, then confirm your storefront (via the UI module you
enabled) renders products from your commercetools project.
