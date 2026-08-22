# Configuration

Content Moderation Bulk State Change works as soon as it's enabled — a bulk action
appears on your content views automatically. This page covers the settings form
that governs the action and the permissions that control who may use it.

## Open the settings form

1. Log in as an administrator.
2. The module's settings live under the configuration key
   `content_moderation_bulk_state_change.settings`. Reach the form from the module's
   entry on the **Extend** page (its *Configure* link), or from the **Configuration**
   section of the admin menu.

Use the form to govern how the bulk action behaves on your site.

## Permissions

The module provides its own permissions, set at **People → Permissions**
(`/admin/people/permissions`). Grant the bulk-state-change permission to the
editorial roles that should be able to move content in batches.

## How access is enforced

The key safeguard to understand is that the bulk action **respects the same rules
as individual moderation**. It honors each user's moderation permissions and the
allowed transitions defined in the workflow, so a user cannot use the bulk action
to reach a state they could not reach one item at a time. Setting up moderation
correctly — the right workflow, the right per-role transition permissions in core
Content Moderation — is therefore what ultimately determines what each editor can
do in bulk. This module simply applies those same rules to many items at once.
