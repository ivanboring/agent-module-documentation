<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Entity Abuse — agent index

Lets users submit **abuse complaints/reports about any content entity** (moderator review queue). Depends
on core `user`, `filter`. Config at `entity_abuse.settings`; provides permissions. Version **1.1.2**. Core
`^8||^9||^10||^11`.

**Security:** report text is user input (sanitize on display); "any user" submission is a spam/abuse
vector — pair with CAPTCHA/flood control; gate submit + view via permissions; reports may accuse users
(handle with care).
