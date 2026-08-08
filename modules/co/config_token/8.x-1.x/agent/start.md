<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Config Token (config_token) — agent index

Define **custom tokens** with values stored in **configuration**, usable wherever tokens are.
Version **8.x-1.7**. Core `>=8`.

Turn repeated constants (support phone, company name, campaign tag) into a single source of truth —
`[config_token:x]` resolves everywhere, change once. Values are **plain config** (travel with
exports, readable where rendered) — **not for secrets**; restrict who can edit (a widely-used token
is a lever).