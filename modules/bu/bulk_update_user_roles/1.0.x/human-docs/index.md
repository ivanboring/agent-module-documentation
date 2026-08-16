# Bulk Update User Roles — manual setup guide

**Bulk Update User Roles** (`bulk_update_user_roles`) adds or removes a role
across **all users at once**. Instead of editing accounts one at a time, you open
a single form, pick a role, choose whether to add or remove it, and the module
applies that change to every user in one batch. It's built for mass role
management and depends only on core's User module.

The tool is a single admin form with no other configuration.

## Important security caution — read before enabling

This module has a known **privilege-escalation flaw** in how it is gated (recorded
as a security finding). Please understand it before you enable the module:

- Its form is protected only by the **`administer users`** permission.
- The form lists **every role, including `administrator`**, with no filtering to
  the roles the current user is actually allowed to assign.
- It applies the chosen role directly to every account.

Drupal core deliberately requires the **higher `administer permissions`**
permission to assign roles — core hides the roles field on the account form
unless a user has `administer permissions` — precisely so that user-management
staff cannot promote themselves to full administrators. This module removes that
separation. As a result, **an account that holds only `administer users` can grant
the `administrator` role to itself and to everyone, which is a full site
takeover.**

What to do about it:

- **Do not grant `administer users` to anyone who should not be a full site
  administrator** while this module is enabled.
- Prefer restricting or uninstalling the module until it is fixed.
- The proper fix (in code) is to require `administer permissions` on the form's
  route and to filter the role options to roles the current user may assign
  (excluding admin roles), mirroring how Drupal core behaves.

This guide is written for a **human** clicking through the admin UI. If you want
terse, token-cheap references for an AI coding agent, read the sibling
[`agent/`](../agent/start.md) docs instead.

## Contents

1. [Installation](installation/index.md) — install the module with Composer and
   enable it.

## Where it lives in the admin menu

The form lives under **Configuration → People**, at
`/admin/config/people/bulk-update`. Reaching it requires the `administer users`
permission (see the security caution above about why that gate is too low).

## How to use it

1. Go to `/admin/config/people/bulk-update`.
2. Choose the role(s) to apply, and whether to **add** or **remove** them.
3. Submit to run the batch across all users.

Given the caution above, treat this as a high-risk operation and keep access to
trusted full administrators only.
