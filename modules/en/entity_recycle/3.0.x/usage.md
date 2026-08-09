<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Entity Recycle adds the ability to restore deleted entities.

---

Entity Recycle adds a **recycle bin / trash** for entities — instead of permanently deleting, entities go
to a recoverable state so they can be **restored**, protecting against accidental or malicious deletion. It
depends on core Node, provides its own permissions, in the Other package.

Use it to make deletions recoverable. This is a **data-protection-positive** feature (undo for deletes). Two
things to keep correct: the recycle bin **retains "deleted" content** (so content a user thought was gone
still exists — relevant for data-retention/erasure requests; ensure real purge when required), and access to
**restore/permanently-delete** should be gated to trusted roles via its permissions. It has no other
access-control role. Configure the recycle behaviour and permissions.

---

- Add a recycle bin for entities.
- Restore deleted entities.
- Protect against accidental deletion.
- Depend on core Node.
- Provide undo for deletes.
- Retain deleted content recoverably.
- REMEMBER retained content matters for erasure requests.
- Ensure real purge when required.
- Gate restore/purge to trusted roles.
- Provide its own permissions.
- Configure the recycle behaviour.
- Handle the recycle bin.
- Restore entities.
- Configure trash.
- Recover deletions.
- Handle undelete.
- Gate restoration.
- Provide a trash bin.
- Configure permissions.
- Provide deletion recovery.
