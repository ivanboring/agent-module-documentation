<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Domain Unique Path Alias adds a `domain_id` property to core's `path_alias` entity, so `/about-us` can exist independently on each domain of a Domain-module site instead of colliding.

---

Core treats path aliases as globally unique: one `/about-us`, one target. On a single site that is correct. On a Domain-access site running five brands from one install, it is the wrong constraint — each brand wants its own `/about-us`, pointing at its own node, and core's uniqueness check refuses the second one.

The module changes the constraint rather than working around it. It adds a `domain_id` property to the alias entity and then replaces the pieces of core and Pathauto that assume global uniqueness: `DomainUniquePathAliasConstraint` and its validator extend core's `UniquePathAliasConstraint` so validation becomes per-domain, and a `DomainUniquePathAliasUniquifier` replaces Pathauto's uniquifier so generated aliases no longer get `-0`, `-1` suffixes when another domain already uses the name.

Extending core's own constraint class rather than reimplementing it is the right call — it inherits core's behaviour and changes only the scope of the lookup — but it does mean the module is coupled to core's implementation of that class, which is the thing to watch across core minor upgrades.

The dependency list is the honest statement of what it needs: `domain`, `domain_source`, `pathauto`, plus core `path_alias`, `field` and `node`. It is not a general-purpose alias module; it is a fix for one specific incompatibility between Domain and core aliases.

---

- Use the same path alias on several domains.
- Give each brand its own /about-us.
- Stop Pathauto appending -0 across domains.
- Make alias uniqueness per-domain.
- Add a domain_id to path aliases.
- Run multiple brands from one Drupal install.
- Keep core's alias validation behaviour otherwise.
- Pair with domain_source for canonical domains.
- Generate aliases per domain with Pathauto.
- Avoid manually prefixing aliases per brand.
- Migrate a multi-brand site onto Domain.
- Re-test aliases after a core minor upgrade.
- Check the constraint still extends cleanly after upgrades.
- Keep node aliases distinct per domain.
- Resolve alias collisions between domains.
- Audit existing aliases before enabling.