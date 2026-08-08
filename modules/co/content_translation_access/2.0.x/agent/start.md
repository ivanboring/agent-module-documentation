<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Content Translation Access — agent index

Adds **per-language, per-bundle permissions controlling who may translate content** (granular vs core's
"translate any entity"). `content_translation_access_user` submodule. Depends on core `content_translation`.
Provides permissions. Version **2.0.0**. Core `^10.5||^11`.

**Access-control**, correct idiom: access handler defaults to `AccessResult::neutral()` (**no fail-open**),
grants `allowed()` only on a matching `cta …` permission, honours `bypass node access`/translate-any. Grant
per role/language.
