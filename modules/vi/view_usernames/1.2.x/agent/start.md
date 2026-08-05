<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# View Usernames (view_usernames) — agent index

Makes username visibility a permission rather than an implicit right. One permission, an
extensible decider API, and hardening of the render paths. No config form, no schema, no Drush.
Requires core `user`; PHP >= 8.1.6; core `^10.5.8 || ^11.2.8` (a deliberately narrow constraint).

Key facts:
- Permission **`view usernames`**. Its own description warns: usernames may contain personal
  information — granting it to anonymous or all authenticated users re-opens the exposure,
  "also modules like JSON API exposes all usernames with this permission".
- Default policy (`DefaultViewUsernameAccessDecider`, priority **1024**): a username is visible if
  the account is **anonymous**, the viewer **is** that user, or the viewer has
  **`administer users`** or **`view usernames`**.
- **Decider API** — `view_usernames.view_username_access_decider`
  (`ViewUsernameAccessDeciderCollector`) is a `service_id_collector` over the
  **`view_username_access_decider`** tag (`required: true`), resolved through `class_resolver`.
  Add your own:

  ```yaml
  # mymodule.services.yml
  mymodule.same_group_decider:
    class: Drupal\mymodule\SameGroupUsernameDecider
    tags:
      - { name: view_username_access_decider, priority: 512 }
  ```

  Implement `ViewUsernameAccessDeciderInterface::canViewUserName(AccountInterface $acting_user,
  UserInterface $other_user): AccessResultAllowed|AccessResultForbidden`.
- Enforcement points (all in `view_usernames.module`, delegating to `EntityHooks`):
  - `hook_user_access()` → `userEntityAccess()` (the `view label` operation),
  - `hook_entity_field_access()` → `entityFieldAccess()`,
  - `hook_preprocess_username()` — the belt-and-braces guard; the source notes it "is not supposed
    to be here but currently this is the safest way … to ensure every call that uses
    `#theme => 'username'` inherits this access check".
  Cacheability is bubbled explicitly (`Utility\CacheabilityBubbleUpper`,
  `view_usernames_user_format_name_alter()`).
- Internal services — **do not depend on or decorate these**, they are marked `@internal`:
  `view_usernames.user_format_name_hardening_bypasser`
  (`TemporaryUserFormatNameHardeningBypasser`) and
  `event_subscriber.view_usernames.jsonapi_early_rendering_fix`.
- Classes are `final` and `@internal` throughout; the supported extension point is the decider tag,
  not subclassing.

Operational notes:

```bash
drush role:perm:add editor 'view usernames'
drush php:eval 'foreach (\Drupal\user\Entity\Role::loadMultiple() as $r) { if ($r->hasPermission("view usernames")) print $r->id() . "\n"; }'
```

Expect knock-on effects: author fields, comment bylines, JSON:API user resources and Views
username fields all start rendering a placeholder for users without the permission. Audit
public-facing displays after enabling.
