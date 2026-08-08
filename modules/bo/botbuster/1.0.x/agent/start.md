<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# BotBuster — agent index

Protects configured paths from **bots via a lightweight JavaScript browser-verification challenge**
(simple bots that don't run JS fail). Config at `botbuster.settings`. Version **1.0.0-alpha3**. Core
`^10.3||^11`.

Anti-abuse control (one layer). **Caveats:** stops naive bots, not headless/determined ones; requires JS
(accessibility/no-JS impact) — pair with rate-limiting/CAPTCHA for stronger protection.
