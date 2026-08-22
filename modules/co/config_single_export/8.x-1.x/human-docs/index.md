# Configuration Single Export — manual setup guide

**Configuration Single Export** (`config_single_export`) adds a **Download** button
to Drupal core's *single item* configuration export page. Out of the box, core
renders one configuration object's YAML into a textarea, which you then have to
select, copy, and paste into a correctly named file — and the right filename is the
part people most often get wrong, because it is not obvious from the contents. This
module lets you click once and receive the file, named correctly, instead.

It is a small quality-of-life tool for developers who move configuration between
sites, save config for a patch or a bug report, or keep individual config objects in
version control. It depends only on core's Configuration Manager module and adds no
settings of its own. This is the 8.x‑1.4 release, and the button appears on the
existing core export page rather than anywhere new in the admin menu.

> **Know this before enabling it.** There is a defect worth understanding first.
> The module writes each export into the server's temporary directory and implements
> `hook_file_download()` so core can serve the file — but that hook returns download
> headers for **every** file in the `temporary://` scheme, with no check that the
> file is one the module actually wrote. In testing, a user holding only the
> `export configuration` permission was able to download an *unrelated* file from the
> temp directory by name. That permission is routinely granted to site builders just
> so they can copy a config object's YAML out of the UI — it is **not** meant to be a
> filesystem read. What this can reach depends on the temp directory (on many setups
> that is `/tmp`, shared with every process on the host). Filenames must be known or
> guessed (a single path segment, no directory traversal, no listing offered), so it
> is not a browsable file explorer — but it is a wider grant than the permission
> implies. Weigh that before enabling it on a site where `export configuration` is
> handed out broadly, and prefer the Drush workflow (`drush config:export`) where you
> can.

This guide is written for a **human** clicking through the admin UI. If you want
terse, token‑cheap references for an AI coding agent, read the sibling
[`agent/`](../agent/start.md) docs instead.

## Contents

1. [Installation](installation/index.md) — install the module with Composer and
   enable it.

The module has **no settings form** — it only adds a button to an existing core
page, so there is no configuration page.

## Where it lives in the admin menu

Once enabled, the Download button appears at the bottom of core's single-export
page at **Configuration → Development → Configuration synchronization → Export →
Single item**
(`/admin/config/development/configuration/single/export`).

## How to use it

1. Go to `/admin/config/development/configuration/single/export`.
2. Choose the configuration type and the specific configuration item you want to
   export.
3. Click the **Export** (download) button the module adds at the bottom of the page.
   Your browser downloads the selected configuration as a correctly named YAML file.

Access to that page requires the `export configuration` permission — please read the
caveat above before granting it widely.
