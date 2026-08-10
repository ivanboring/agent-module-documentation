<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Anonymous Redirection redirects anonymous users to the login page.

---

Anonymous Redirection **redirects anonymous users to the login page** — forcing visitors to log in before
viewing the site, via an event subscriber that sends anonymous requests to `/user/login`. It depends on core
User, in the Custom package.

Use it to make a site login-required. It is an access/site-structure feature and it is a **coarse gate**: it
redirects **all** anonymous traffic to a **fixed** `/user/login` (not a user-controlled destination, so no
open-redirect). Two things to ensure: the login (and password-reset/register) routes must be **excluded** so
anonymous users can actually authenticate, and understand this is a blanket redirect, not per-entity access
(content is still governed by normal access — this just funnels anon to login). It has no per-content
access-control role. Enable and configure any excluded paths.

---

- Redirect anonymous users to login.
- Force login for the whole site.
- Use an event subscriber.
- Depend on core User.
- Serve access/site structure.
- Send anon to /user/login (fixed target).
- BE a coarse blanket gate (no open-redirect).
- Exclude login/reset/register routes (so anon can authenticate).
- Not be per-entity access (content still governed normally).
- Have no per-content access-control role.
- Enable + configure excluded paths.
- Handle anon redirection.
- Redirect anon.
- Configure the exclusions.
- Force login.
- Handle the redirect.
- Gate anonymous.
- Funnel to login.
- Exclude auth routes.
- Provide anonymous redirection.
