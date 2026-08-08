<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Body Class — agent index

Adds a **custom CSS class to the `<body>` tag per node** (per-node styling hooks). Config at
`body_class.settings`; provides permissions. Version **1.1.1**. Core `^9||^10||^11`.

Content-display/theming — class emitted into the body `class` attribute; **sanitize/constrain the value**
(no markup injection) + restrict who can set it (trusted editors) via its permission. No access role.
