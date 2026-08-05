<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# CKEditor Mentions (ckeditor_mentions) — agent index

`@`-mentions for **CKEditor 5**. Depends on core `ckeditor5` and `image`; `masterminds/html5 ^2.1`.
PHP >= 8.1. Core requirement `^10.3 || ^11`. **Release is 3.0.0-beta5 — beta.**

| Submodule | Adds |
|---|---|
| `ckeditor_mentions_entity` | mention entities other than users |
| `ckeditor_mentions_realname` | display real names rather than usernames |

Key facts:
- **The AJAX callback is permission-gated, and correctly so.**
  `/ckeditor-mentions/ajax/{editor_id}/{plugin_id}/{match}` requires **`use inline mentions`** —
  the permission's own title says it exists "to protect the AJAX callback path". A user-matching
  endpoint is a **user-enumeration surface**: it answers "does a user matching this string exist".
  Grant it to content-authoring roles only, never to anonymous.
- `ckeditor_mentions.rules.events.yml` exposes events, so a mention can drive a notification
  through Rules or ECA — that is usually the reason to install it rather than the linking itself.
- Enabled per **text format** through the CKEditor 5 toolbar configuration.
- Ships a `.tugboat/config.yml` — upstream maintains a demo environment.
