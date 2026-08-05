<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Prevent User Delete Reassign (prevent_user_delete_reassign) — agent index

Removes the **"Delete the account and make its content belong to the Anonymous user"** option from
Drupal's account cancellation form. Depends on core `user`. No configuration.
Version **1.0.2**. Core requirement `^8 || ^9 || ^10 || ^11`.

**Why that option is the quietly destructive one:** it keeps every node, comment and file and sets
the author to Anonymous. The content survives; **the record of who wrote it does not**, irreversibly
— reconstructing from revisions is at best partial. Consequences land later:
- an editorial site loses **attribution** on hundreds of articles;
- a site with an audit obligation loses the **accountability trail**;
- a site relying on **"own content" permissions** finds nobody owns anything, so nobody can edit it.

**It is also not the GDPR answer people reach for it with.** Erasure asks for the *personal data* to
go; anonymising the author link while keeping content that names the person in its text has not
achieved that.

Better alternatives it forces a choice among: **disable** the account; **delete account and
content**; or **reassign to a named archive account** — which keeps content editable and honest
about no longer being that person's.

**Check the API too:** a UI change does not constrain `drush user:cancel` or site scripts that pass
the removed method explicitly.
