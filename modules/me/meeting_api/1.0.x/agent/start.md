<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Meeting API (meeting_api) — agent index

Models a **meeting as an entity** with **pluggable conferencing backends**. Submodules:
`meeting_api_manual` (URL pasted in — the case every such system needs and few provide) and
`meeting_api_scheduler`. Depends on **`datetime_range_timezone`**. Version **1.0.0-alpha3** — an
**alpha**, so treat the API as unsettled. Core requirement `^10 || ^11`.
`administer meeting_api_meeting types` is `restrict access: true`.

**Why the abstraction:** a direct provider integration spreads that provider's identifiers, join
URLs and API semantics through the site, so changing it becomes a migration. A backend plugin keeps
the provider at one boundary.

**The `datetime_range_timezone` dependency is a good sign** — a meeting without an explicit timezone
is the classic distributed-team bug, and core's date range field does not carry one.

**Two things to plan:**
1. **Provider credentials** → environment variable behind a **Key** entity. A meeting-platform API
   key can usually create and read meetings across the whole account.
2. **A join URL is a capability.** Anyone holding it can usually enter the meeting — treat it as a
   secret in listings, feeds and emails, not as an ordinary field.
