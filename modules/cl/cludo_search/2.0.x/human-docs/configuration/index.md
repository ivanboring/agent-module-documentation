# Configuration

Cludo Search needs your Cludo account details before it will return any results.
Open the module's settings page (linked from the modules list under
**Configuration**); administering it requires the module's own permission.

## Enter your Cludo account details

From your Cludo dashboard, gather and enter:

- **Customer ID** — the identifier for your Cludo account.
- **Engine ID** — the search engine (index) within your account that Cludo should
  query.
- **API credentials** — the API key/authentication details Cludo issues for making
  search requests.
- **Search page path** — the path on your site where the Cludo results are
  rendered, so the search form knows where to send visitors.

The settings page also exposes additional customisation options; see Cludo's own
documentation for the full list of appearance and template settings.

## Keep the API key secret

The Cludo API credentials authenticate your site to an external service, so treat
the API key like a password — don't commit it to version control, and prefer
supplying it from an environment variable where possible.

> **Using DDEV?** Store the key without committing it:
> `ddev dotenv set .ddev/.env --cludo-api-key=<value>`, then `ddev restart`. Keep
> `.ddev/.env` out of version control.

## Place the search blocks

The module provides two blocks — one for the **search form** and one for the
**results page**. Go to **Structure → Block layout**, place the search‑form block
in a region where visitors can reach it (for example the header), and ensure the
results block appears on your configured search page.

## A note on privacy and availability

Because queries are sent to Cludo, visitors' **search terms leave your site** and
are processed by Cludo — factor this into your privacy documentation. Search also
depends on Cludo being reachable; if Cludo is unavailable, search results won't
render, so consider how your site should behave in that case.
