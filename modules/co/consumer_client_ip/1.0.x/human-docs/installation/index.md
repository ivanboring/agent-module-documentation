# Installation

## Requirements

- **Drupal 10.3 or 11** (`core_version_requirement: ^10.3 || ^11`).
- The **Consumers** contrib module (`consumers:consumers`) — Composer pulls it in
  automatically with the command below.
- No third‑party PHP library requirements.
- To be useful and safe, your site also needs correct **trusted reverse‑proxy
  settings** (`reverse_proxy`, `reverse_proxy_addresses`) in `settings.php` — see
  the security note below.

## Install with Composer

From the project root:

```bash
composer require drupal/consumer_client_ip -W
```

The `-W` (`--with-all-dependencies`) flag lets Composer pull in the Consumers
module and update any shared dependencies as needed.

> **Using DDEV?** Prefix Composer and Drush with `ddev` when you run from your host
> machine — `ddev composer require drupal/consumer_client_ip -W`, `ddev drush …`.
> Inside the container (`ddev ssh`) run them without the prefix.

## Enable the module

```bash
drush en consumer_client_ip -y
```

This enables Consumer Client IP along with the Consumers module if it is not
already on.

## Security note — do not skip this

The module trusts whatever value is in the header it maps. **Only** point it at a
header that your trusted proxy/CDN sets and strips from inbound client input, and
pair it with correct `reverse_proxy` trust in `settings.php`. If you map a
client‑settable header while trusting `X-Forwarded-For`, clients can spoof their IP
and defeat IP access rules, flood control, geolocation and log integrity. See the
[overview](../index.md) for the full explanation and the step‑by‑step setup.

## Verify it worked

After configuring the header mapping on the relevant consumer (see the
[overview](../index.md)), confirm that Drupal reports the real visitor IP — for
example that flood control counts requests per real client — and that sending the
mapped header directly from outside your proxy does **not** change the detected IP.
