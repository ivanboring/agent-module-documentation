# Fast Revision Purge — manual setup guide

**Fast Revision Purge** (`fast_revision_purge`) plans and bulk‑deletes old node
and paragraph revisions in resumable batches, so your revision tables stop growing
without bound. You set a retention policy — keep the latest *N* revisions, keep
revisions newer than *X* days, or both — per entity type and bundle, preview the
result with a dry run, then purge from the admin UI, from cron, or with Drush.

Over time, every save of a node adds a revision, and on a busy site those tables
become the largest in the database. This module prunes them safely: it works in
chunked, resumable batches so long purges do not time out, it is aware of
Layout Builder, Paragraphs, and Media so it does not break references, and it
guards the default revision, in‑use drafts, and moderated content so it never
deletes something still in play. It ships with conservative, production‑safe
defaults.

> **Deleting revisions is destructive and irreversible.** A purged revision — and
> the historical content it held — is gone; you lose that slice of audit and
> rollback history. Always run a **dry run** first to review exact counts, take a
> database backup before a real purge, and keep this tool in the hands of trusted
> administrators only.

This guide is written for a **human** clicking through the admin UI. If you want
terse, token‑cheap references for an AI coding agent, read the sibling
[`agent/`](../agent/start.md) docs instead.

## Contents

1. [Installation](installation/index.md) — install the module with Composer and
   enable it.
2. [Configuration](configuration/index.md) — set retention policies, run a dry
   run, and purge (UI and Drush).

## Where it lives in the admin menu

Its settings and purge controls live at **Configuration → Development → Fast
Revision Purge**. See [Configuration](configuration/index.md) for the field‑by‑field
walkthrough and the Drush commands.
