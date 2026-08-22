# File View Access — manual setup guide

**File View Access** (`file_view_access`) adds a **`file view access` permission**
that is *intended* to let uploaders decide, per file, whether a file may be viewed
only by users who hold that permission. The idea is that instead of moving *all*
uploads into the private file system, you could mark individual files as restricted.

Before you rely on it, read the next paragraph carefully.

> **Important — this module does not actually restrict file viewing.** Its access
> check applies only to files in the **public** scheme and never returns a "forbid"
> result, and — critically — **public files are served directly by the web server**
> at their `/sites/.../files/…` URL, which never consults Drupal's file access
> handler. So anyone who has (or guesses) the URL can download a public file
> regardless of the permission. The module also implements no `hook_file_download`,
> which is the only hook that gates **private** file downloads, so private files
> aren't protected by it either. In short, enabling this to "require a permission to
> view files" gives **false confidence**: your public files remain world-readable by
> URL, and your private files aren't gated.

To *actually* restrict a file, the reliable approach is Drupal's built-in mechanism:
put the file in the **private** file system (`private://`) and gate its download
through proper access logic (a `hook_file_download` implementation, or a module built
around private-file access such as those that tie file access to the parent entity's
access). Treat File View Access as, at best, a soft UI hint — not a security boundary.

The module depends on core **File**, provides its own permission, and supports
**Drupal 8 through 11**.

This guide is written for a **human** clicking through the admin UI. If you want
terse, token‑cheap references for an AI coding agent, read the sibling
[`agent/`](../agent/start.md) docs instead.

## Contents

1. [Installation](installation/index.md) — install with Composer, enable the
   module, and assign the permission.

There is **no settings form** for this module. Setup is limited to assigning the
permission and enabling the option on file fields, described in "How to use it"
below — but see the security warning above before you depend on it.

## Where it lives in the admin menu

File View Access adds no configuration page. Its permission appears at **People →
Permissions** (`/admin/people/permissions#module-file_view_access`), and the
per-field option appears in file field settings.

## How to use it

The module's own documented steps are:

1. Enable the module.
2. Grant the **file view access** permission to the roles that should hold it, at
   `/admin/people/permissions#module-file_view_access`.
3. Enable file view access on the file fields where you want the option.
4. When creating content, mark the individual files that should be subject to file
   view access.

But keep the security warning in mind: because public files are served straight by
the web server, this will **not** keep a determined visitor from downloading a
public file by its URL. For anything that genuinely must be protected, use the
private file system with real download gating instead.
