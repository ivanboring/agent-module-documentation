<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Database cache prefix (db_cache_prefix) — agent index

Prepends a configurable string to every **cache id** written to the database backend.
Version **2.0.0-rc3** — release candidate. Core requirement `^10.3 || ^11`.

**Where the need arises:** several installations sharing one cache store — shared hosting with one
database, a multi-site with a common cache table, a **blue-green deployment** running two versions
against the same infrastructure, several environments pointed at one backend for convenience.
Without a prefix, `config:system.site` means different things in each and **whichever writes last
wins** — producing the confusing bug class where a setting changed on one site appears on another,
or a deployment serves the previous release's rendered output.

**Three things worth attaching:**
1. **Changing the prefix invalidates everything.** Intended when a deployment wants a clean cache,
   and a **cold start** on a busy site — so a prefix change is a **deployment event**, not a
   configuration tweak.
2. **A prefix is not isolation in the security sense.** Entries share the table and are readable by
   anything with database access — it prevents **accidental collision**, not deliberate reading.
   Where the requirement is confidentiality between tenants, use **genuinely separate stores**.
3. **Core already offers `$settings['cache_prefix']`** for the database backend in some
   arrangements. First question: does the site need a module, or does the setting cover it? Depends
   on the backend in use.
