# Configuration

Fasttoggle has two parts to set up: a small **settings form** (at the
`fasttoggle.settings` route) that controls which toggles are offered, and the
**permissions** that decide who sees them. Because each toggle is permission‑gated,
the permissions are really where the behaviour lives.

## The settings form

Open the Fasttoggle settings form (route `fasttoggle.settings`, reachable from the
module's entry on the **Extend** page or under **Configuration**). Here you enable
the toggles you want to expose across the site's entity types:

- **Node toggles** — *published* status, *promoted to front page*, and *sticky*.
- **Comment toggles** — comment *status* (published/unpublished).
- **User toggles** — user *status* (active/blocked).

Turn on only the toggles that fit your editorial workflow, then save. The toggles
you enable here still only appear to users who also hold the matching permission.

## Permissions

Fasttoggle provides its own permissions, managed at **People → Permissions**
(`/admin/people/permissions`) — search for "fasttoggle" to find them. Assign each
toggle permission to the roles that should be able to use it.

The key principle: a permission here lets a role use the *fast* one‑click version of
an action they can **already perform**. Fasttoggle does not grant the underlying
ability — a role that cannot unpublish a node through the normal edit form will not
be able to unpublish it via a toggle either. So align these permissions with your
existing moderation model: give editors the toggles for the statuses they already
manage, and nothing more.

## Save

Save the settings form, and save the permissions page after assigning roles. The
toggle links appear immediately for users whose roles have both the toggle enabled
and the permission granted.
