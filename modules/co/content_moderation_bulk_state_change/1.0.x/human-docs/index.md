# Content Moderation Bulk State Change — manual setup guide

**Content Moderation Bulk State Change** (`content_moderation_bulk_state_change`)
adds a **bulk action** for moving many pieces of content through their editorial
workflow at once. On a site using core **Content Moderation** and **Workflows**,
editors normally transition each item through its states one at a time. This module
lets an editor select multiple entities — for example in the content admin listing —
and apply a moderation transition to all of them in a single operation, which makes
publishing or archiving a batch of content far quicker.

The action is not a blunt override. It is designed to **respect moderation
permissions and allowed workflow transitions**, so a user cannot use the bulk
action to reach a state they could not reach one item at a time. The module
provides its own permissions and a settings form to govern how the action behaves.

It builds directly on core **Workflows** and **Content Moderation**, which are its
only dependencies.

This guide is written for a **human** clicking through the admin UI. If you want
terse, token‑cheap references for an AI coding agent, read the sibling
[`agent/`](../agent/start.md) docs instead.

## Contents

1. [Installation](installation/index.md) — install with Composer and enable the
   module.
2. [Configuration](configuration/index.md) — the settings form and the permissions
   that govern the bulk action.

## How to use it

After installation, a bulk action is available on content views. Open your content
admin listing (or another view with bulk operations), tick the entities you want to
move, choose the bulk action to change the moderation state, pick the target state,
and apply. Only transitions your account is allowed to make will be carried out.
