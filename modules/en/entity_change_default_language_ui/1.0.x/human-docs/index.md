# Entity change default language UI — manual setup guide

**Entity change default language UI** (`entity_change_default_language_ui`) adds a
user interface on top of the `entity_change_default_language` API module for
**changing the default (original) language of content entities** — either for a
single node, or in bulk via a batch process.

The problem it solves shows up after imports or language migrations, where content
ends up marked with the wrong *original* language. Core does not give you a simple
way to switch which language is the entity's default. This module does: it lets you
pick the new original language, optionally create the translation in that language
if it does not already exist, and choose which existing translations to keep — all
others are removed. The actual rewrite of the entity's langcode and translations is
handled by the module's updater service.

It works through two forms: a per-node operation at
`/node/{node}/change-default-language` (also available from the node's Operations in
the content list), and a site-wide batch form at
**Configuration → Region and language → Change entities default language**
(`/admin/config/regional/change-default-language`). It depends on the
`entity_change_default_language` API module, which must be enabled first.

> **Important — this is a destructive operation.** Both forms are gated only by the
> broad **access administration pages** permission, which is *not* the same as node
> edit access. A user who has that permission but no edit rights on a given node can
> still switch its original language and delete its non-preserved translations.
> Restrict the **access administration pages** permission to trusted roles, and
> audit who can reach these routes.

This guide is written for a **human** clicking through the admin UI. If you want
terse, token‑cheap references for an AI coding agent, read the sibling
[`agent/`](../agent/start.md) docs instead.

## Contents

1. [Installation](installation/index.md) — install with Composer and enable the
   module and its API dependency.

There is **no settings form** for this module — it provides operational forms
(single-node and batch), not a configuration page. How to use them is described
below.

## Where it lives in the admin menu

- **Per node:** the **Change default language** operation on each node in the content
  list, or directly at `/node/{node}/change-default-language`.
- **Site-wide batch:** **Configuration → Region and language → Change entities
  default language** (`/admin/config/regional/change-default-language`).

## How to use it

**Change one node's default language**

1. Go to the **Content** list and find the node.
2. In the **Operations** column, choose **Change default language** (or open
   `/node/{node}/change-default-language`).
3. Pick the new original (default) language.
4. Optionally create the translation in the new language if it does not exist yet.
5. Select which existing translations to keep — any you do not select are removed.
6. Submit, then review the resulting default language on the node.

**Change many nodes at once**

1. Go to **Configuration → Region and language → Change entities default language**.
2. Run the batch form to bulk-correct default languages across many entities — for
   example after a language migration or an import under the wrong language.
