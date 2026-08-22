# Config Translation Sync — manual setup guide

**Config Translation Sync** (`config_translation_sync`) keeps your *configuration
translations* consistent across environments during deployments. It extends Drupal
core's Configuration Translation module: when you import or deploy configuration,
this module ensures the translated configuration — the translations of things like
your site name, views labels, field labels, and other config strings — stays in sync
rather than drifting or being lost.

The problem it addresses is a familiar multilingual headache. You translate
configuration on one environment, deploy configuration to another, and the
translations quietly go missing or fall out of step because they are not carried
along cleanly by the standard config workflow. Config Translation Sync closes that
gap: it synchronizes translated configuration automatically on every configuration
import, and it also gives you a Drush command to re-synchronize on demand. It
supports include and exclude patterns for fine-grained control over which config is
synced, can be restricted to specific language codes, and logs its changes for
transparency and debugging.

This is a multilingual and configuration-management tool. It manages *translation
configuration*, not content, and has no access-control role beyond its own
permission. It depends on core's **Configuration Translation** module and requires
Drupal 10 or 11 (this is the 1.0.2 release). The typical home for it is a deployment
script: keep translated configuration consistent between local, staging, and
production, and ensure translations are not lost when configuration changes ship.

This guide is written for a **human** clicking through the admin UI. If you want
terse, token‑cheap references for an AI coding agent, read the sibling
[`agent/`](../agent/start.md) docs instead.

## Contents

1. [Installation](installation/index.md) — install the module with Composer and
   enable it.

The module is driven by configuration import and a Drush command rather than a
settings form, so there is no configuration page — its workflow is described under
"How to use it" below.

## How to use it

Once enabled, Config Translation Sync runs automatically during every configuration
import, so in most deployment pipelines you need to do nothing beyond enabling it.
For manual runs and finer control it provides the `drush crst` command:

- Run synchronization manually:

  ```bash
  drush crst
  ```

- Re-synchronize only specific configuration objects:

  ```bash
  drush crst --config-names=system.site,views.view.frontpage
  ```

- Include a set but exclude particular items (patterns supported):

  ```bash
  drush crst --config-names=views.view.* --exclude=views.view.frontpage
  ```

- Restrict synchronization to specific languages:

  ```bash
  drush crst --langcode=ru,en
  ```

Add `drush crst` to your deployment scripts if you want an explicit re-sync step
after configuration is imported. The module logs the changes it makes, which is
helpful when debugging why a particular translation did or did not update.
