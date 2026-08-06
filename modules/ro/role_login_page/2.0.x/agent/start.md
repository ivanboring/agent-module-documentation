<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Role login page (role_login_page) — agent index

Several login pages with **role-based post-login destinations**. Settings behind
`administer role login settings`. Version **2.0.3**.
Core requirement `^8 || ^9 || ^10 || ^11`.

**Two things to be precise about — login is where a small mistake is a large one:**
1. **A distinct login page is presentation, not separation.** Every form authenticates against
   **the same user table** — a member can log in at the staff page and vice versa. The destination
   differs; the credentials do not. If the requirement is that staff accounts **must not
   authenticate at the public entrance**, that is `disable_login_by_domain` (wave 76), an IP
   restriction (`access_filter`, `restrict_route_by_ip`), or a genuinely separate site.
2. **Post-login redirects deserve the same care as any redirect.** A destination from
   **configuration** is safe; one from a **request parameter** is an open-redirect surface. Core's
   `Url::fromUserInput()` refuses external targets, which is what makes an unvalidated destination
   a broken page rather than a phishing hop.

**What core gives instead:** one login form and one destination rule — so the alternatives are a
per-site `hook_user_login()` redirect or paths with redirects bolted around them.
