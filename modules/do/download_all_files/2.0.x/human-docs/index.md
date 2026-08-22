# Download All Files — manual setup guide

**Download All Files** (`download_all_files`) adds a "download everything" link to
a file field. It ships a field formatter — *Table of files with download all
link* — for core's **File** field type, plus a block, that bundle all of an
entity's attached files into a single zip archive generated on demand. Any page
that carries several documents — a tender with a dozen annexes, a course with its
handouts, a planning application with its drawings, a press kit — becomes a
one‑click download instead of a tedious file‑by‑file exercise.

The design solves a real problem cleanly: the usual alternative is asking editors
to maintain a *second*, hand‑built zip that immediately drifts out of step with
the field it duplicates. Generating the archive straight from the field removes
that whole class of maintenance.

It depends only on core's **File** module and runs on Drupal 10.2 and 11. It is
minimally maintained (maintenance fixes only) but is security‑advisory covered.

> **Please read the access caveats below before deploying.** A review of the 2.0.2
> release found three defects worth understanding: the download route does not
> check *field‑level* access (only that you can view the entity), so a field hidden
> from a user but holding **public‑scheme** files can still be downloaded by anyone
> who can view the entity; an invalid `field_name` in the URL triggers a 500 error
> (a cheap way for an unauthenticated caller to flood the error log); and the
> generated zip files are written to a predictable temp path and never deleted, so
> they accumulate over time. None is hard to fix, but all three are present in
> 2.0.2 — see [Installation](installation/index.md) for the practical guidance.

This guide is written for a **human** clicking through the admin UI. If you want
terse, token‑cheap references for an AI coding agent, read the sibling
[`agent/`](../agent/start.md) docs instead.

## Contents

1. [Installation](installation/index.md) — install the module with Composer,
   enable it, and note the access/housekeeping caveats.

There is **no standalone settings form** for this module. You use it by choosing
its formatter on a file field's Manage display, or by placing its block — described
below — so there is no separate Configuration page in this guide.

## How to use it

### As a field formatter

1. Go to the **Manage display** tab of a content type (or other entity) that has a
   core **File** field — **Structure → Content types → *(type)* → Manage display**.
2. For the file field, set the format to **Table of files with download all
   link**.
3. Save. When the entity is viewed, the field renders as a table of its files with
   a single "download all" link that streams a zip of every file.

### As a block

Place the module's download‑all block through **Structure → Block layout**, in the
region where you want the bulk‑download link to appear.

> **Access reminder:** because field‑level access is not re‑checked and public
> files are not access‑controlled, only expose this on fields whose files you are
> comfortable making available to everyone who can view the entity. For genuinely
> restricted documents, use the **private** file scheme and standard field/entity
> access controls, and test who can reach the download route.
