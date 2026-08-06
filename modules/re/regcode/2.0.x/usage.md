<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Registration codes gates user registration behind a code — generated in bulk, optionally single-use and time-limited.

---

Open registration invites spam; closed registration means an administrator creates every account. A registration code is the middle ground: registration stays self-service, but only for people who were given a code. That fits invitation flows, conference attendees, members of a partner organisation, a beta cohort.

The module generates codes in bulk, manages them at `/admin/config/people/regcode/manage`, and can require one on the registration form. Views is a dependency, so the code list is a View and can be filtered and exported like any other listing.

**Two things determine whether codes are actually a control.** Whether a code is **single-use** decides if one leaked code opens the door indefinitely — a code posted in a forum thread is a code everyone has. And whether codes **expire** decides how long a leak stays useful. Both are configuration, and both should be set deliberately rather than left at whatever the default is.

**A registration code is not authentication.** It establishes that someone had a code, not who they are, so anything downstream that matters — role assignment, access to restricted content — should not treat "registered with a code" as identity. Where a code grants a role, that is a privilege decision made by whoever distributes codes, which is worth being explicit about.

Codes also belong in the same category as passwords for handling: generated randomly, transmitted over a channel you trust, and not committed to a spreadsheet everyone can read.

---

- Require a code to register.
- Run an invitation-only signup.
- Generate codes in bulk.
- Give conference attendees a signup code.
- Limit registration to a beta cohort.
- Make codes single-use.
- Expire codes after a period.
- List and filter codes in a View.
- Export a batch of codes.
- Assign a role based on a code.
- Reduce registration spam.
- Decide who may distribute codes.
- Treat codes as secrets in transit.
- Revoke a leaked code.
- Audit which codes were used.
- Avoid treating a code as identity.
