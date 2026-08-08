<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Domain Unique Path Alias (domain_unique_path_alias) — agent index

Adds a **`domain_id` property to core's `path_alias`** entity so alias uniqueness becomes
per-domain instead of global. Version **1.0.1-beta5**. Core `^9.4 || ^10 || ^11`.
Depends on `domain`, `domain_source`, `pathauto` + core `path_alias`, `field`, `node`.
No routes, permissions or config page.

Replaces two assumptions:
- `DomainUniquePathAliasConstraint` / `…Validator` **extend core's `UniquePathAliasConstraint`**,
  scoping the lookup to the domain.
- `DomainUniquePathAliasUniquifier` replaces Pathauto's, so a name already used on another domain
  no longer gets a `-0`/`-1` suffix.

**Upgrade watch point:** it extends core's constraint class directly, so it is coupled to core's
implementation — re-test aliases after a core minor upgrade.

Narrow scope: this is a fix for the Domain/core-alias incompatibility, not a general alias module.