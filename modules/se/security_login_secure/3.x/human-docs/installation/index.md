# Installation

## Requirements

- **Drupal 8.8, 9.3, 10, or 11** (`core_version_requirement: ^8.8 || ^9.3 || ^10 || ^11`).
- No other Drupal modules or PHP libraries are required.
- Several features (registration, API-key retrieval, the auth challenge, and the
  "contact us" support form) make **outbound calls to miniOrange's backend**
  (`xecurify.com`). See the security note below before relying on those.

## Install with Composer

From the project root:

```bash
composer require drupal/security_login_secure -W
```

The `-W` (`--with-all-dependencies`) flag lets Composer update any shared
dependencies as needed.

> **Using DDEV?** Prefix Composer and Drush with `ddev` when you run from your host
> machine — `ddev composer require drupal/security_login_secure -W`, `ddev drush …`.
> Inside the container (`ddev ssh`) run them without the prefix.

## Enable the module

```bash
drush en security_login_secure -y
```

You can also enable it from **Extend** (`/admin/modules`).

## Security note — read before registering with miniOrange

A review of version 3.0.1 found that the module **disables TLS certificate
verification** (`CURLOPT_SSL_VERIFYPEER = FALSE`) on **eight** requests to miniOrange's
API, including customer registration, the **API-key retrieval** (`/rest/customer/key`),
and the auth challenge — and one call also disables hostname verification
(`CURLOPT_SSL_VERIFYHOST = false`). Because those connections are encrypted but not
authenticated, a man-in-the-middle during the setup/registration flow can intercept the
API key and your account credentials (and the admin email/phone that is sent along),
or impersonate the miniOrange endpoint. There is no toggle to re-enable verification.

Treat this as a **defect to patch before trusting the module**: remove the
`CURLOPT_SSL_VERIFYPEER`/`CURLOPT_SSL_VERIFYHOST` overrides (cURL verifies certificates
by default) or route the calls through Drupal's HTTP client. The local
`security.md` in this module's docs describes the exact call sites. The brute-force
protection itself does not depend on the vendor backend and is unaffected by this
issue.

## Verify it worked

After enabling, open the module's admin section (see
[Configuration](../configuration/index.md)), set a low failed-login threshold, and
confirm that repeated bad logins block the account/IP as configured.
