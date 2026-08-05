<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Igbinary (igbinary) — agent index

Serialization services backed by the **igbinary PHP extension** — a compact binary replacement for
`serialize()`. No dependencies, no routes, no permissions, no UI.
Version **2.0.0-alpha3**. Core requirement `^10.3 || ^11.0 || ^12` (declares a core major that
does not exist yet).

Services provided: `serialization.igbinary`, `serialization.igbinary_gz`,
`serialization.phpserialize_gz`. A cache or queue backend must be **pointed at them** — the module
changes nothing on its own.

**Two hard preconditions:**
1. **The igbinary PECL extension must be compiled into PHP.** Without it the services are inert.
   This is an infrastructure decision, not a Composer one.
2. **Existing serialised data is unreadable in the new format.** Switching a live cache backend
   makes old entries garbage — pair the change with a cache flush. Anywhere serialised data is
   *persisted* rather than cached (a queue mid-drain, a long-lived key-value store) needs more
   than a flush.

Biggest wins are where the cache backend is **over a network** (Redis, Memcached) and every byte
is transfer.
