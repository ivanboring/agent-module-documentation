<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Registration codes (regcode) — agent index

Gates user registration behind a **code**. Manage at `/admin/config/people/regcode/manage`,
generate at `/create`, configure at `/settings`. Version **2.0.1**. Core `^10.3 || ^11`.
Depends on `views` (the code list is a View). Permission: `administer registration codes`.

**Two settings decide whether codes are a control:** whether a code is **single-use** (a code posted
in a forum is a code everyone has) and whether codes **expire** (how long a leak stays useful). Both
are configuration — set them deliberately.

**A code is not authentication.** It establishes that someone had a code, not who they are. Where a
code grants a role, that is a privilege decision made by whoever distributes codes — be explicit
about it. Handle codes like passwords in transit.