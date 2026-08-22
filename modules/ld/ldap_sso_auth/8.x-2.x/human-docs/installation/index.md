# Installation

## Requirements

- **Drupal 9, 10, or 11** (`core_version_requirement: ^9 || ^10 || ^11`).
- The [LDAP](https://www.drupal.org/project/ldap) suite, with:
  - **`ldap_servers`** — your directory server connection, and
  - **`ldap_authentication`** — the LDAP login validation this module hands
    identities to.
- A **web server that establishes the SSO identity** (Kerberos, NTLM, or an SSO
  proxy) and sets it in a server variable such as `REMOTE_USER`.
- The maintainers **recommend against enabling core's Internal Page Cache**
  module alongside this one.

## Install with Composer

From the project root:

```bash
composer require drupal/ldap_sso_auth -W
```

The `-W` (`--with-all-dependencies`) flag lets Composer pull in `drupal/ldap`
and update any shared dependencies as needed.

> **Using DDEV?** Prefix Composer and Drush with `ddev` when you run from your
> host machine — `ddev composer require drupal/ldap_sso_auth -W`, `ddev drush …`.
> Inside the container (`ddev ssh`) run them without the prefix.

## Enable the module

```bash
drush en ldap_sso_auth -y
```

This also enables the `ldap_servers` and `ldap_authentication` dependencies if
they are not already on.

> **Check anonymous access immediately after enabling.** On a stock nginx /
> php‑fpm stack (DDEV, Lando, most containerised hosting), enabling this release
> can cause **every anonymous request to return 403** — because nginx's default
> `fastcgi_params` sets `REMOTE_USER` to an empty string, which this release
> treats as a present identity. From an **incognito / logged‑out browser**, load
> a normal page such as `/node` and confirm you get 200, not 403. If you get 403,
> the module is denying anonymous traffic on your stack; do not deploy it there
> until that is resolved (the fix is at the code level — adding `global: TRUE` to
> the auth provider service tag and testing the variable with `!empty()`).

## Verify it worked

After confirming anonymous access still works, test the SSO path itself: from a
browser inside your managed domain (one the web server authenticates), load any
page and confirm you arrive already logged in as your directory account, with no
login form and no redirect. Keep `/user/login` available for accounts that are
not in the directory.
