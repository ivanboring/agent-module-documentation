<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Field Redirect — agent index

Redirects an entity's page to the **URI value of a link/file/image field** (link content types → send
visitors to the field's URL/document). Requires PHP 8.1. Config at `field_redirect.settings`; provides
permissions. Version **3.0.2**. Core `>=10.3.11`.

**SECURITY CAUTION — open-redirect vector:** redirects to whatever URL the field holds; if the field can hold
an **arbitrary external URL** set by a less-trusted user, it becomes an **open redirect** (phishing).
Mitigate: restrict who can set the field (trusted editors), and/or limit it to internal/known destinations.
No access role.
