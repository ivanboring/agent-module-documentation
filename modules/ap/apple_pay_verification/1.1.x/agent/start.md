<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Apple Pay Verification — agent index

Serves the **Apple Pay merchant domain-verification file** at `/.well-known/apple-developer-merchantid-domain-
association[.txt]` (admin uploads it; Apple fetches it to verify the domain). Provides permissions. Version
**1.1.0**. Core `^9||^10||^11`.

Implemented safely — serves the **admin-uploaded managed file** at **fixed** routes (no path param → no
traversal); public serving is correct (Apple fetches anonymously); only admins can upload. No other access
role.
