# Installation

## Requirements

- **Drupal 10** (`core_version_requirement: ^10`).
- The **AI** module (`ai`) — the `drupal/ai` project — enabled and configured with
  a provider capable of generating text. AI Log Analysis uses the standard
  `ai.provider` service for its analysis and makes no direct AI calls of its own.

You will need an account and API key with your chosen AI provider. Store the key
as an environment-backed secret and reference it through a **Key** entity in the
AI module — never commit it or paste it into plain config. On DDEV, set it once
with `ddev dotenv set .ddev/.env --openai-api-key=<value>` and `ddev restart`,
then point a Key entity at the environment variable.

## Install with Composer

From the project root:

```bash
composer require drupal/ai_log_analysis -W
```

The `-W` (`--with-all-dependencies`) flag lets Composer pull in the AI module and
any shared dependencies as needed.

> **Using DDEV?** Prefix Composer and Drush with `ddev` when you run from your host
> machine — `ddev composer require drupal/ai_log_analysis -W`, `ddev drush …`.
> Inside the container (`ddev ssh`) run them without the prefix.

## Enable the module

```bash
drush en ai_log_analysis -y
```

There are no submodules.

## Important: restrict the log list on public sites

The captured **log list** page (`/admin/ai-log-analysis/logs`) is served without
an access check, so anonymous visitors could view your captured log messages —
which often contain sensitive paths and error details. Before enabling this on a
production or public site, restrict that path at the web server or reverse
proxy, or keep the module to trusted, non-public environments. The analyze, clear
and settings actions are gated by the **Administer site configuration**
permission. Next, see [Configuration](../configuration/index.md).
