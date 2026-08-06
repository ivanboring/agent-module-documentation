<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Usercentrics CMP (usercentrics) — agent index

Usercentrics consent banner plus real script gating: a `usercentrics_app` config entity per data
processing service, and a replaced JS collection renderer that defers their scripts until consent.
Configure at `/admin/config/user-interface/usercentrics/settings`; ordering form at
`/admin/config/user-interface/usercentrics`. Version **1.0.2**. Core `^10.1 || ^11`.

Permissions: `administer usercentrics` (**`restrict access: true`**) — settings and app entities;
`use usercentrics` — lets ordinary users open the preference UI.

Ships `usercentrics_app` entities for `google_analytics`, `google_analytics_4`,
`google_tag_manager`, `matomo`, `matomo_self_hosted`.

Key classes: `UsercentricsJsCollectionRenderer` (registered over core's via
`UsercentricsServiceProvider`) is what actually defers the script tags — read it before assuming
a script is gated. `Entity/UsercentricsApp`, `Utility/UsercentricsHelper`.

**Scope boundary worth stating to users:** only scripts modelled as a `usercentrics_app` are
gated. Tags added by a theme template, another contrib module, or hard-coded markup are emitted
normally. Adding a tracker without adding its app produces a banner that claims more than it
enforces.