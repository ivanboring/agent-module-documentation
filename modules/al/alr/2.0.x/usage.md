<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
After Login Redirect sets the redirection/destination path after log in and log out.

---

After Login Redirect (alr) sets **where users go after logging in and after logging out** — a configurable
destination path for the post-login and post-logout redirects, so you can send users to a dashboard, home
page or custom landing instead of the default. It is in the Development package.

Use it to control post-auth landing pages. It is an access-adjacent UX feature affecting redirect destinations
only (it does not change who can log in). Security note: if the redirect target can be influenced by a request
parameter, ensure only **internal/allow-listed** paths are used (avoid open-redirect to external URLs) —
configure fixed internal destinations. It has no access-control role. Configure the login/logout redirect
paths.

---

- Redirect users after login.
- Redirect users after logout.
- Send users to a chosen landing page.
- Configure post-auth destinations.
- Not change who can log in.
- Replace the default redirect.
- Keep redirect targets internal/allow-listed.
- Avoid open-redirect to external URLs.
- Have no access-control role.
- Configure the redirect paths.
- Handle login redirects.
- Set the destination.
- Redirect on login/logout.
- Configure landing pages.
- Handle redirects.
- Set post-login paths.
- Configure destinations.
- Handle logout redirect.
- Redirect after auth.
- Provide login redirects.
