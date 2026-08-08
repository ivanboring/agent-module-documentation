<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Me Redirect (me_redirect) — agent index

Redirects **/me and /me/* to the current user's /user/UID/**. Version **3.0.0**.

Target is the **current user** (from session, not request input) → not an open-redirect, can't reach
another user's pages. Clean self-URL helper, no unusual security surface.