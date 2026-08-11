<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Administrator Login — agent index

**Restrict login/reset to administrators** — but form-only. Version **1.0.1**. Core `^10||^11`.

**SECURITY (Danger 3): false protection** — only a `user_login_form` `#validate` handler; core's `user.login.http` (`POST /user/login?_format=json`) and basic_auth/oauth bypass it, so non-admins still authenticate (see local security.md). Enforce at the auth/request layer + deny JSON login for non-admins. Depends on core `user`.