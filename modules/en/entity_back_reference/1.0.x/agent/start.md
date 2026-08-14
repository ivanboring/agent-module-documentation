<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Entity Back Reference — agent orientation

Library service for reverse entity-reference lookups. No UI, no routes.

- Version 1.0.x, core ^9||^10. Service: `entity_back_reference.back_reference_finder` (`BackReferenceFinder`).
- SECURITY NOTE: `BackReferenceFinder::loadBackReferencedEntities()` runs the entity query with `accessCheck(FALSE)` (src/Services/BackReferenceFinder.php:88) and returns fully loaded entities. The docblock delegates access to the caller. No exposed route/formatter ships, so it is not directly exploitable here — but any consumer that renders results to unprivileged users could leak restricted/unpublished entities. Flag when reviewing dependents.
