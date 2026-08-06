<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# JSON:API Permission (jsonapi_permission) — agent index

Adds an **`access jsonapi`** permission so the API can be allowed or denied per role.
Version **3.0.0**. Core `^10.1 || ^11`. Depends on `jsonapi`.

**Fills a real gap:** core JSON:API has no switch of its own — it is on when the module is on, and
access is decided purely per entity. There is no way to say "this role does not use the API".

**It is a gate, not a replacement for entity access.** Everything JSON:API enforces still applies
to whoever passes.

**Direction of a mistake matters:** denying it to the role your decoupled front end authenticates
as breaks the site; granting it to anonymous restores pre-module behaviour. Test both the front end
and an anonymous browser after changing it.