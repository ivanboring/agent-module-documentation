<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Facets Protection — agent index

**Protects facets with an additional token** (`_fp`) — denies facet requests without a valid token, preventing
crafted/enumerated facet URLs. Depends on `facets`. Provides permissions. Version **1.0.2**. Core `^10.3||^11`.

Search/performance-protection — token-gates facet requests (mitigates facet-parameter abuse/DoS); no broad access
role beyond permission.
