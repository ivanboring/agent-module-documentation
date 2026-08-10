<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Anonymous Redirection — agent index

**Redirects anonymous users to the login page** (force site-wide login) via an event subscriber to a **fixed**
`/user/login` (no open-redirect). Depends on core `user`. Version **1.0.0**. Core `^10||^11`.

Access/site-structure — coarse blanket gate: **exclude login/reset/register routes** (so anon can authenticate);
content still governed by normal access. No per-content access role.
