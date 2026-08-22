# Configuration

Connecting to Exact Online is an OAuth flow: you register an application in Exact
Online, give Drupal that application's **Client ID** and **Client Secret**, and then
authorize the connection so the module can obtain and store OAuth tokens.

## 1. Create an Exact Online application

In your Exact Online account, create an application. Exact Online gives you a **Client
ID** and a **Client Secret** for it. You will also configure the app's redirect URI to
point back at your Drupal site (the module's OAuth callback).

## 2. Store the credentials securely

The Client Secret is a credential — do not commit it to version control. With DDEV,
store it (and the Client ID, if you prefer) as environment variables:

```bash
ddev dotenv set .ddev/.env --exact-online-client-secret=<your-client-secret>
ddev restart
```

That exposes it inside the web container as `EXACT_ONLINE_CLIENT_SECRET` (keep
`.ddev/.env` out of version control). Where possible, reference it via `getenv()` rather
than storing the raw secret in exported configuration.

## 3. Enter the settings

Go to **Configuration → Web services → Exact Online → Settings**
(`/admin/config/services/exact-online/settings`) and provide:

- **Client ID** — the identifier from your Exact Online application.
- **Client Secret** — the secret from your Exact Online application (drawn from the
  environment variable above).

Save the form.

## 4. Authorize the connection

Complete the OAuth authorization so Drupal receives and stores its access/refresh
tokens. Once connected, the **dashboard** shows the connection status, and the **log
view** records connection-related entries you can check if anything goes wrong.

## 5. Harden the reset route before production

As shipped, the reset route `/admin/config/services/exact-online/reset` deletes all
stored OAuth tokens on a GET request with `?confirm=1`, with **no permission check and
no CSRF protection** — so an anonymous request, or an administrator tricked into loading
a crafted link or image, can wipe the connection. Before this module goes near a
production site, gate that route behind an administrative permission and require a POST
confirmation form. See the security note on the [overview page](../index.md).

## Building the actual sync

Remember this module only establishes the connection. To move data between Drupal and
Exact Online (invoices, customers, and so on), you write custom code against the
connected `picqer/exact-php-client` client — the specifics depend on your business
logic.
