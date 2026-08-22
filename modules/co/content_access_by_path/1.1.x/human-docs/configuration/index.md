# Configuration

Content Access by Path works by giving each editor a **taxonomy field on their user
account** that lists the site sections (path prefixes) they're allowed to edit. The
module then uses Drupal's access layer to allow editing of content whose URL alias
falls under one of those sections — plus content the editor authored (see the
warning below).

## Who can configure it

The settings form (route `content_access_by_path.settings`, under the site's
**Configuration** area) is gated by the **"Administer content access by path"**
permission — spelled with spaces and capitalised exactly as shown. Grant it only to
trusted administrators.

## Setting up sections and editors

1. **Define the sections** as the path prefixes teams should own — for example
   `/news`, `/news/sports`, `/news/sports/rugby`. These are represented as taxonomy
   terms used by the module's user field.
2. **Assign an editor to one or more sections** by setting the taxonomy field on
   their **user account** (People → the user → edit). An editor with the `/news`
   section can edit content whose alias begins with `/news`.
3. **Test the result** by logging in as that editor and checking exactly which nodes
   they can and cannot edit — across the rendered site *and* any API surface
   (JSON:API/REST/Views), since the module enforces through the real access layer.

## What it does — and does NOT — protect

Please configure this module with the following limitations in mind. They come from
the publicly documented analysis of the current release (**1.1.3**), verified on a
clean install:

- **Restricting an editor can unintentionally grant them delete/edit on their own
  content.** The "own content" allowance returns an *allowed* result that is OR‑ed
  with core's decision, so filling in a user's restriction field can grant **update
  and delete on that user's own nodes even without any edit/delete permission** — and
  the configured section is not consulted for that case. Do not assume that adding a
  restriction only *narrows* access.
- **Section boundaries are not exact.** Matching is a plain "starts with" check, so a
  `/news` section also matches `/newsletter-admin` and `/news-archive-private`. Name
  your sections and aliases so that no allowed prefix accidentally swallows a path it
  shouldn't.
- **Access follows the URL alias, which is content.** Renaming an alias moves a node
  between sections, and any user who can set an alias can move their own content into
  a section they're permitted to edit. Restrict who can edit aliases accordingly.

Because of these issues, use Content Access by Path to **organise editorial work**,
not as a hard security boundary, until a fixed release is available on the project
page.

## Caching

The module sets cache metadata deliberately (the user, the node, and each section
term as dependencies, with `user` and `user.permissions` cache contexts), so access
decisions update correctly when those change.
