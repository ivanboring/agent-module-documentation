# Configuration

Configuring Etsy API means giving it the OAuth2 credentials for your Etsy developer
app and authorizing access to your shop. Because these are sensitive credentials,
the important part of this page is **how to store them safely**.

## Before you start

Create an **Etsy developer app** in your Etsy account to obtain an **API
key/keystring** and configure a redirect URL. You'll enter these on your site so it
can authenticate to the Etsy API via OAuth2.

## Open the settings

Access to the Etsy API settings is gated by the **Administer Etsy settings**
permission (`administer etsy settings`). Grant it only to trusted administrators
(under **People → Permissions**), then open the Etsy API settings form as that user
to enter the connection details.

## The settings

- **Etsy API credentials (OAuth2 key/keystring)** — the key(s) from your Etsy
  developer app, used to authenticate requests.
- **OAuth2 authorization** — the module uses the **OAuth2 Client** flow to authorize
  access to your shop; complete the authorization so the site can obtain and refresh
  access tokens.

Since Etsy API integrates a **single** Etsy shop, you configure one shop's
connection here.

## Storing the API credentials safely

The Etsy API keystring is a secret. Keep it in an environment variable rather than
pasting it into configuration that could be exported or committed.

With DDEV, save it into the project's dotenv file (never commit `.ddev/.env`) and
restart so the container picks it up:

```bash
ddev dotenv set .ddev/.env --etsy-api-key=<your-etsy-keystring>
ddev restart
```

The flag `--etsy-api-key` becomes the environment variable `ETSY_API_KEY` inside
the web container. Reference that variable when configuring the connection — for
example through a **Key** entity using the env provider — so the raw secret stays out
of exported configuration.

## A note on data and egress

Once authorized, your site makes outbound calls to Etsy's servers (**egress**) and
may pull shop, listing and order data. Keep that in mind for privacy and for any
environment where outbound HTTP is restricted, and always talk to Etsy over HTTPS.

## Save and test

Save the settings and complete the OAuth2 authorization. A successful connection
means your custom integration (or the companion *Etsy Shop* module) can then fetch
data from your Etsy shop.
