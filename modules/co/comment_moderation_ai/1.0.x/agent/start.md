<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Comment Moderation AI — agent index

**AI comment moderation** (custom policies flag inappropriate content). Version **1.0.1**. Core `^10||^11`.

AI key via a Key entity (env-backed). Runs an LLM call per comment — keep comment perms + flood limits tight for cost. Depends on core `comment`/`user`/`system`/`field` + `key`.