# Speedboxes — manual setup guide

**Speedboxes** (`speedboxes`) lets you tick or untick a whole run of checkboxes by
dragging across them, instead of clicking each one individually. You left-click
and drag the mouse over a group of checkboxes; a small toolbar appears, and you
can **check**, **uncheck**, or **invert** the selection in one gesture.

Drupal has some famously dense checkbox grids — the permissions page above all,
but also bulk operations, field settings and taxonomy forms — and configuring them
one click at a time is slow. On a site with many modules the permissions grid can
hold thousands of checkboxes, so setting up a role means a lot of clicking.
Drag-to-toggle is a small usability improvement that saves a real and irritating
amount of time on the setup work every project does. It works the moment you
enable it — there is nothing to configure — and has no dependencies.

**One caution, on the permissions page especially.** That is exactly where
clicking quickly is most expensive, because permissions are the site's access
control and a permission granted by accident looks identical afterwards to one
granted deliberately. The fix is not to avoid the module but to change what you
review: after a bulk change, **read back what the role now holds** rather than
trusting the gesture, pay particular attention to anything marked *restrict
access*, and export configuration so the change appears in a diff that can be
reviewed like any other.

This guide is written for a **human** clicking through the admin UI. If you want
terse, token-cheap references for an AI coding agent, read the sibling
[`agent/`](../agent/start.md) docs instead.

## Contents

1. [Installation](installation/index.md) — install the module with Composer and
   enable it.

## How to use it

There is nothing to configure. Once enabled, go to any page with a grid of
checkboxes (for example **People → Permissions**), left-click and drag across the
boxes you want to change, and use the small toolbar that appears to check, uncheck
or invert them. After a bulk change on the permissions page, review the resulting
role before saving.
