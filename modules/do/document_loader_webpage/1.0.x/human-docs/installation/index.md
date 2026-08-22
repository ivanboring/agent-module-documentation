# Installation

## Requirements

- **Drupal 10.3 or 11** (`core_version_requirement: ^10.3 || ^11`).
- The **Document Loader** (`document_loader`) module — the framework this plugin
  extends.

There are no additional PHP library requirements (it uses Drupal's bundled Guzzle
HTTP client).

## Install with Composer

From the project root:

```bash
composer require drupal/document_loader_webpage -W
```

The `-W` (`--with-all-dependencies`) flag lets Composer install Document Loader and
update any shared dependencies as needed.

> **Using DDEV?** Prefix Composer and Drush with `ddev` when you run from your host
> machine — `ddev composer require drupal/document_loader_webpage -W`,
> `ddev drush …`. Inside the container (`ddev ssh`) run them without the prefix.

## Enable the module

```bash
drush en document_loader_webpage -y
```

This also enables **Document Loader** if it is not already on.

## Before you expose it — SSRF

This plugin fetches URLs **from your server**. Before allowing any untrusted input to
determine the URL, review the SSRF caveat in the
[overview](../index.md): restrict who can set the URL, and validate/allowlist targets
(block private and link-local ranges). For admin-only or fixed-pipeline use the risk
is limited.

## Verify it worked

Visit **Configuration → Media → Document Loader**
(`/admin/config/media/document-loader`) — the **Webpage** loader should now appear as
an available plugin. Load a known public URL from the test tool to confirm the page
is fetched and converted.
