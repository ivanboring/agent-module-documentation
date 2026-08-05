<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Social Post (social_post) — agent index

The autoposting arm of the **Social API** family (siblings: Social Auth, Social Widgets).
Depends on `social_api ^4` and core `link`. PHP >= 8.1. Core requirement `^9.5 || ^10 || ^11`.
Admin at `/admin/config/social-api/social-post` (`configure: social_post.integrations`).

Key facts:
- **Does nothing on its own.** Network implementations (Twitter, Facebook, …) are separate
  provider projects that register against this module's plugin manager. Installing only
  `social_post` gives an empty integrations page.
- Content entity `social_post` (`src/Entity/SocialPost.php`) stores the user↔account link:
  `user_id`, `plugin_id`, `provider_user_id`, `name`, `link`, `additional_data`, and
  **`token`** — the provider's OAuth access token, in plain entity storage. Anything with
  database or backup access has the tokens; treat them as live credentials.
- Declared permissions: `view social post user entity lists`,
  `delete social post user accounts`, `delete own social post user accounts`.
- **Access-control defects — verified on this site, see `security.md` (local):**
  - `entity.social_post.delete_form` is gated by a plain `_permission` with **no
    `_entity_access` requirement and no route provider**, and
    `SocialPostEntityDeleteForm::submitForm()` calls `$entity->delete()` directly. A user with
    only `delete own social post user accounts` can delete **any** user's connection by editing
    the `{social_post}` route parameter. Confirmed by executing it.
  - `UserAccessControlHandler::checkAccess()` gates `delete` on
    `delete social post user entity lists` — **a permission that does not exist** — while
    `view` is granted to anyone holding `delete own social post user accounts`, with no
    ownership check.
  - Practical guidance: do not grant `delete own social post user accounts` to a general
    authenticated role on 3.0.2.
- `entity.social_post.delete_form` path carries `{provider}` and `{user}`; `{user}` defaults to
  `FALSE` and only affects the post-delete redirect.
