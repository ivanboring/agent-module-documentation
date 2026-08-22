# Contact Permissions — manual setup guide

**Contact Permissions** (`contact_permissions`) adds permission-based control over
who can have a **personal contact form**. Drupal core lets any user turn on a
personal contact form on their profile so others can email them — but core makes
that an all-or-nothing site-wide setting. This module lets you govern the capability
**by role** instead, so you can decide which roles are allowed to have (and be
reached through) a personal contact form.

The problem it solves is a common one: you might want only staff, or only certain
roles, to be contactable via a personal form, while everyone else has it turned
off. This module makes that possible. It depends on core's **Contact** module and
provides its own permissions.

Under the hood, for any role that does **not** have the permission, the module
removes the "activate my personal contact form" option from that user's edit page,
and it also blocks access to that user's `user/{uid}/contact` page. Core's own
access check runs first — this module only tightens things further, it never grants
access core would deny.

Because this is an access-control module, the "configuration" is really about
assigning the right permissions to the right roles. Take a moment after setup to
verify the assignment matches your intent about who should be contactable. See
[Configuration](configuration/index.md).

This guide is written for a **human** clicking through the admin UI. If you want
terse, token‑cheap references for an AI coding agent, read the sibling
[`agent/`](../agent/start.md) docs instead.

## Contents

1. [Installation](installation/index.md) — install the module with Composer and
   enable it.
2. [Configuration](configuration/index.md) — assign the personal-contact-form
   permissions to the roles you want.

## Where it lives in the admin menu

The module has no settings form of its own; you configure it entirely on the
**People → Permissions** page (`/admin/people/permissions`), where its permissions
appear. See [Configuration](configuration/index.md).
