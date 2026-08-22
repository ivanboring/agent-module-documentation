# Configuration

Fast Revision Purge is configured and run from **Configuration → Development → Fast
Revision Purge**. Everything here deletes data permanently, so read the warning
before you save and run.

> **Purging revisions cannot be undone.** Always run a dry run first and take a
> database backup before a real purge. Restrict the module's access to trusted
> administrators.

## Set a retention policy

For each entity type — and, if you want finer control, each bundle — choose how
many revisions to keep. You have three options, and the module starts with
conservative defaults:

- **Keep the latest N revisions** — retain the most recent *N* revisions of each
  entity and purge anything older. Use this when you care about "the last few
  versions" regardless of age.
- **Keep revisions newer than X days** — retain any revision created within the
  last *X* days and purge older ones. Use this when your rule is time‑based (for
  example, "keep a month of history").
- **Both** — combine the two rules so a revision is kept if it satisfies *either*
  the count or the age threshold, whichever is more generous.

Set these per entity type and per bundle so, for example, articles can keep more
history than a high‑churn landing‑page type.

## What is always protected

Regardless of the policy, the module's guards **never** delete:

- the **default (current) revision** of any entity,
- **in‑use drafts** and **moderated content** (when Content Moderation is enabled),
- revisions whose removal would **break Paragraphs or Media references**.

It is also multilingual‑aware, so it behaves sensibly across translations.

## Preview with a dry run

Before deleting anything, run a **dry run**. It reports the exact number of
revisions each policy would remove, without touching the database, so you can sanity
‑check the plan. Review these counts carefully — this is your last chance to catch a
policy that is too aggressive.

## Run the purge

When you are satisfied with the dry‑run counts (and have a backup), run the purge.
It executes in **chunked, resumable batches** so it completes without timeouts or
memory spikes, even on large tables, and it can create database indexes to speed the
work up.

## Running from Drush (for automation and CI)

The module provides Drush commands designed for scripted and scheduled use:

```bash
drush frp:dry-run            # Preview what would be purged (no deletion)
drush frp:purge              # Purge according to the configured policies
drush frp:purge node.article # Purge a specific entity type / bundle
drush frp:status             # Show current status
```

A common pattern is to schedule `drush frp:purge` via cron so revision growth is
kept in check automatically — but only after you have validated your policy with a
dry run and a backup.
