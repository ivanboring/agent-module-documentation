<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Domain Redirect — agent index

Makes redirects **domain-aware** (same source path → different destination per domain). Depends on `domain`,
`redirect`. Version **2.0.0**. Core `^10.2||^11`.

Site-structure/URL — redirects are **admin-configured** (trusted input, not user-supplied → not an
open-redirect surface); no access role.
