<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Enables Advanced Access (adva) for core **Media** entities by registering an *overriding* Access Consumer, so adva Access Providers can grant view/update/delete access to media entities through adva's own access handler and `adva_access` grant table.

---

adva_media is a thin glue submodule: its entire code is one plugin class,
`MediaAccessConsumer` (id `media`, entityType `media`), which extends adva's
`OverridingAccessConsumer`. Enabling the module makes adva register `media` as a consumer whose
access handler is replaced with `AdvancedAccessEntityAccessControlHandler`; media access records
are stored in `adva_access` and rebuilt via adva's queue/batch. You configure it on the shared
adva settings form (`/admin/config/people/adva`) by enabling Access Providers (e.g. `anonymous`)
for the Media consumer, then rebuilding records. It supports core Media only (not the contrib
Media Entity project). No own permissions, routes, schema, hooks, or services. **Because it uses
adva's overriding consumer, be aware of the enforcement asymmetry documented in the parent
module's `security.md` and `agent/api/access-model.md`: adva grants on media are additive (they
add access, they do not restrict below the `view media` permission), while listing queries are
filtered — so a media item hidden from Views can still be directly reachable.**

---

- Apply adva Access Providers to core media entities (view/update/delete).
- Expose selected media to anonymous users via adva's `anonymous` provider.
- Add a custom access dimension to media (department, owner, subscription) via a provider.
- Filter media in Views/EntityQuery listings by adva grants.
- Grant `bypass adva media access` to trusted roles to see all media.
- Centralize media access logic in adva's pluggable API rather than custom media hooks.
- Combine multiple providers to compute media grants.
- Rebuild media access records after changing provider configuration.
- Manage per-language media grants on multilingual sites.
- Model bundle-specific media access via provider config.
- Integrate media grants into Search API indexes (adva's processor).
- Provide site builders a UI toggle for media access providers.
- Restrict which media appear in a media library View by grants.
- Migrate bespoke media-access rules into reusable adva providers.
- Use adva to layer additional media grants on top of core media permissions.
- Requeue and rebuild media grants in the background via adva's queue worker.
- Enable media access control without writing a media access handler yourself.
- Pair with `adva_na` to manage node and media access through one API.
