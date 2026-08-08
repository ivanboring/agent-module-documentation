<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Commerce CardPointe — agent index

Drupal Commerce **payment gateway for CardPointe** (CardConnect / Fiserv — tokenized card payments). Depends
on `commerce`; provides permissions. Version **2.0.2**. Core `^10.3||^11||^12`.

**Security:** store CardPointe credentials as **secrets**; HTTPS; **server-side** authorize/capture against
CardPointe's API (keep tokenized card data off the server); confirm test/live.
