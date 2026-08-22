# Configuration

Setting up Commerce Printful has three parts: connect your Printful account,
choose how orders are sent for fulfillment, and import the products you want to
sell. It also exposes a fulfillment webhook you should be aware of (see the
security note at the end).

## Connect your Printful account

1. Log in as a user with the Printful administration permission (grant it at
   **People → Permissions** if needed).
2. Open the module's Printful settings page in the admin UI.
3. Enter your **Printful API key** to connect. This authenticates the module's
   calls to Printful for product data, shipping rates, and order transfer.

### Keep your API key safe

The Printful API key is a credential. Do not commit it to version control. On this
project the recommended pattern is to keep the value in an environment variable
via DDEV's dotenv command and expose it to Drupal through a **Key** entity rather
than typing the raw secret into exportable config:

```bash
ddev dotenv set .ddev/.env --printful-api-key=<value>
ddev restart
```

Reference the Key from the module's settings where supported, and run your site
over **HTTPS**.

## Choose the fulfillment behavior

Decide how completed orders are handed to Printful:

- **Drafts** — orders are transferred to Printful as drafts for you to review and
  confirm before they are produced and shipped. Good while you are getting
  started or want a human check.
- **Fully automated** — orders are transferred and submitted for fulfillment
  automatically on completion, so the process runs hands-off.

## Import Printful products

Bring the Printful products you want to sell into Commerce, either:

- through the module's **import UI**, or
- with the module's **Drush command** (handy for larger catalogues or repeatable
  imports — run `drush list` after enabling to see the exact command name).

Because Printful generates product images dynamically, you do not need to supply
your own product photography.

## How checkout and fulfillment work (good to know)

When a cart contains Printful items, the module consults the Printful API at
checkout to retrieve **shipping costs** for the Printful shipping method. On order
completion it contacts Printful again to **transfer the order** (as a draft or for
automatic fulfillment, per your setting). Printful then produces and ships the
items and bills your card on file; your own payment gateway collects payment from
the customer.

## ⚠️ Security note — the fulfillment webhook (version 3.0.1)

Printful reports fulfillment updates (such as shipment and tracking) to a webhook
on your site at `/commerce-printful/webhooks`. **In this version that webhook is
not authenticated** — it performs no signature, secret, or store validation, and
for a `package_shipped` event it writes the shipped time, tracking code, and
shipping service directly from the request payload without re-fetching from
Printful's API.

The practical risk: an unauthenticated attacker who knows or guesses a shipment's
`external_id` could POST a forged `package_shipped` event to mark orders shipped
and inject arbitrary (customer-visible) tracking numbers. This is
fulfillment-status / order-data spoofing — **not** a payment bypass, since payment
is handled by a separate gateway — but it is still worth mitigating. Consider
protecting the webhook path with a front-controller secret or IP allow-list, keep
the site on HTTPS, and watch the project for an upstream fix. (Printful does not
HMAC-sign its webhooks, so the robust mitigations are store validation and/or
re-fetching the order — neither of which this version does.)
