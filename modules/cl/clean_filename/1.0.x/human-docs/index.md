# Clean Filename — manual setup guide

**Clean Filename** (`clean_filename`) makes sure your file uploads keep clean,
tidy names. It has two related jobs. First, it sanitises upload names — removing
special characters, spaces and diacritics and transliterating to safe, consistent
values — so files don't end up with awkward or URL-unfriendly names. Second, and
more distinctively, it reverses Drupal's default behaviour when a file collides
with an existing one of the same name.

By default, when you upload `document.pdf` and one already exists, Drupal renames
the *new* file to `document_0.pdf` and leaves the old one holding the clean name.
Clean Filename flips that around: it lets the **new** upload keep the clean
`document.pdf` name and renames the **existing** file to the next available suffix
(`document_1.pdf`). The result is that your latest file always gets the clean URL —
better for SEO and for anyone sharing the link — while existing references to the
older file are preserved because it simply moves to a new suffixed name. The module
manages the suffix numbering intelligently to keep this consistent even in more
tangled naming situations.

The behaviour is applied **per field**, so you enable it only on the file or image
fields where you want it, rather than site-wide. Administration is gated by the
`administer clean filename` permission. It depends on core's **File**, **Field**,
and **System** modules (all standard), and supports Drupal 10 and 11. This is a
release candidate (`1.0.0-rc1`).

This guide is written for a **human** clicking through the admin UI. If you want
terse, token‑cheap references for an AI coding agent, read the sibling
[`agent/`](../agent/start.md) docs instead.

## Contents

1. [Installation](installation/index.md) — install with Composer and enable the
   module.

There is no separate site-wide settings page — Clean Filename is turned on
per field, described under "How to use it" below.

## How to use it

Because the module works per field, you switch it on where you need it:

1. Go to the field settings for a file or image field — **Structure → Content types
   → *(your type)* → Manage fields**, then edit the relevant field (or the
   equivalent for any other fieldable entity).
2. Enable Clean Filename's option for that field and save.
3. Grant the `administer clean filename` permission to the roles that should manage
   this behaviour (**People → Permissions**).

From then on, uploads to that field get the clean-name treatment: new files keep
the original clean name and any conflicting existing file is moved to the next
suffix.
