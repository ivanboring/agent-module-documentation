# Configuration

Contact Permissions has no settings form. You configure it entirely by assigning
its permissions to roles on the standard permissions page. Getting the assignment
right *is* the configuration, so work through it carefully.

## Assign the permissions

1. Log in as a user who can administer permissions (an administrator by default).
2. Go to **People → Permissions** (`/admin/people/permissions`).
3. Find the module's **Have a personal contact form** permission and tick it for
   each role that should be allowed to have a personal contact form.
4. Save permissions.

For any role you leave **unticked**, the module:

- **Hides the option** on those users' edit pages to activate their personal
  contact form (so they can't turn one on), and
- **Blocks access** to those users' `user/{uid}/contact` pages, so no one can reach
  a personal contact form for them.

## How it interacts with core's permission

This module works alongside core's own **access user contact forms** permission —
it tightens rather than replaces it. Core's access check runs first; only if core
would grant access does this module apply its role-based rules. So a user needs the
appropriate core access to reach personal contact forms in the first place, and this
module then narrows *whose* forms are reachable based on role.

## Verify the assignment

Because this controls who on your site is contactable via a personal form, it's
worth confirming the result matches your intent. Check that:

- Roles you meant to be contactable (for example staff) have the permission and can
  turn on their personal contact form.
- Roles that should not be contactable no longer see the option and their
  `user/{uid}/contact` page is not reachable.

Adjust the tick boxes and re-save if anything doesn't match what you expected.
