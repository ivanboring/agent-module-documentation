# Config2PHP — manual setup guide

**Config2PHP** (`config2php`) is a developer utility that exports a piece of
Drupal configuration as **PHP code**. Drupal core can export configuration, but
only as YAML — which you then have to translate by hand before you can use it in
PHP, for example inside an `hook_install()` or `hook_update_N()` update hook.
Config2PHP does that translation for you: pick a configuration type and a specific
element, and it generates a properly formatted PHP associative array that is ready
to paste into code.

It handles the fiddly formatting details automatically — wrapping array keys,
turning YAML colons into PHP `=>` arrows, adding trailing commas, and so on — so
the output drops straight into a module. It depends on core's **Configuration**
module and provides its own permission that gates the export interface.

A security note worth keeping in mind: exported PHP can contain **configuration
values that are secrets** (API keys, tokens, credentials) if they happen to live
in the config you export. Review and redact anything sensitive before pasting or
committing it — never hard-code secrets into module code. Keep the export
interface restricted to developers. The module has no content or access-control
role beyond its permission.

This guide is written for a **human** clicking through the admin UI. If you want
terse, token‑cheap references for an AI coding agent, read the sibling
[`agent/`](../agent/start.md) docs instead.

## Contents

1. [Installation](installation/index.md) — install with Composer and enable the
   module.

There is no settings form to configure — Config2PHP is a one-screen tool,
described below.

## How to use it

1. Enable the module (see [Installation](installation/index.md)) and grant its
   export permission to trusted developers.
2. Open the Config2PHP tool page (from the site's admin/configuration area, for
   users who hold the module's permission).
3. **Select the configuration type** and then the **specific element** you want.
4. Config2PHP generates the equivalent PHP array. Copy it into your install/update
   hook or module code.
5. **Review the output for secrets** (API keys, passwords, tokens) and redact them
   before committing — reference secrets from environment variables or a Key
   entity instead.
