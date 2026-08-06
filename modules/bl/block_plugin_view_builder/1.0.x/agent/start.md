<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Block Plugin View Builder (block_plugin_view_builder) — agent index

Renders a **block plugin** from code, without a placement. No dependencies, no UI.
Version **1.0.6**. Core requirement `^10 || ^11`.

**The distinction Drupal conflates:**
- a **block plugin** is code producing a render array;
- a **block placement** is a configuration entity saying that plugin appears in a region under
  conditions.

Most of the time both are wanted. Sometimes only the first: a controller needing the search form, a
custom page assembling several plugins, a mail template wanting a rendered component, a test.

**Doing it by hand is five steps, and two of them are the ones people skip** — fetch the block
manager, instantiate with configuration, **check access**, call `build()`, **attach the cache
metadata**. The output looks correct without those two, which is why a helper is worth having.

**Two things worth attaching:**
1. **Rendering a plugin bypasses the placement's visibility conditions** — the point, but those
   conditions are sometimes where a site expressed *"this block is only for administrators"*. A
   directly rendered plugin may appear where configuration said it should not.
2. **A plugin's cache metadata belongs to whatever renders it.** A plugin varying by user renders
   differently per user — code that **drops its cacheability** produces a fragment **cached for
   everyone**. The standard way this becomes a disclosure rather than a bug.
