# Drush dialog — manual setup guide

**Drush dialog** (`drush_dialog`) provides an interactive dialog for running Drush
commands, aimed at site administrators. Instead of remembering the exact syntax
of every command, you get a guided, menu-driven interface for running common
administrative Drush operations.

It is a developer and administrator convenience tool. Think of it as a friendlier
front door to Drush: you pick from the offered operations rather than typing each
command from memory. The module supports Drupal 9.2 and up, 10, and 11.

Because the tool runs Drush operations, keep it to trusted operators — anyone able
to use it can run the administrative commands it exposes.

This guide is written for a **human** clicking through the admin UI. If you want
terse, token‑cheap references for an AI coding agent, read the sibling
[`agent/`](../agent/start.md) docs instead.

## Contents

1. [Installation](installation/index.md) — install with Composer and enable the
   module.

There is **no configuration page** for this module — it is an interactive tool you
launch rather than a settings form.

## How to use it

Once the module is enabled, launch the interactive dialog and follow its prompts
to pick and run a Drush operation. It is designed so administrators can run common
maintenance tasks through a guided menu instead of typing individual commands.
Restrict its use to trusted administrators, since the operations it can trigger
are the same powerful Drush commands you would otherwise run by hand.
