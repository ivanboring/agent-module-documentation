<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Role Paywall (role_paywall) — agent index

Hides configured fields on premium content from users without a subscriber role. Core requirement
`^10.3 || ^11`. Configuration at `/admin/config/content/role_paywall`
(`administer site configuration`); permission `access paywalled content`.

> ## 2.1.12 does not restrict access — verified two ways
>
> Enforcement is one line in `hook_entity_view()`:
>
> ```php
> if ($view_mode == 'full') { … $build[$field_name]['#access'] = $access; }
> ```
>
> `#access` hides a render element. There is **no `hook_node_access`, no field access, no query
> alter** in the module, so the data itself is untouched.
>
> **Executed on this site:**
> ```
> anonymous HTML page   : occurrences of paywalled text = 0     (looks like it works)
> anonymous JSON:API    : body attribute: PAYWALLED-SECRET-BODY-TEXT
> view mode full        : visible to anonymous = false
> view mode teaser      : visible to anonymous = true           (field added to teaser display)
> ```
>
> Both bypasses are ordinary: **JSON:API is core** and on by default in many installs, and a
> **teaser showing the body is a normal display configuration** — a listing page leaks the content
> with no API involved. Views field rendering and search indexing read field values too, so
> paywalled text can also surface in a search excerpt. Same defect class as
> `entity_access_password` in this collection. Transcripts in the local `security.md`.
>
> The correct layer is **`hook_entity_field_access()`**, so render, JSON:API, REST, Views and
> indexing all get the same answer.

Key facts:
- The role/permission logic itself is sound — `RolePaywallManager::checkAccess()` is called and
  honoured. The defect is where its result is applied.
- Admin routes are correctly gated by `administer site configuration`.
- A block is provided for the "subscribe to continue" prompt.
