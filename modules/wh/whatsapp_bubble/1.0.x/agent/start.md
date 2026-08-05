<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Whatsapp Bubble (whatsapp_bubble) — agent index

Floating WhatsApp contact button. No dependencies. Core requirement `^10 || ^11`.
Config at `/admin/config/services/whatsapp-bubble`.

Key facts:
- **Permission is `access administration pages`**, not `administer site configuration`. That is
  looser than comparable modules: on many sites `access administration pages` is granted to
  ordinary staff roles, and this form changes a **public contact channel** — the number every
  visitor is directed to. Worth tightening or noting in an access review.
- Link-based, not widget-based: it emits an outbound `wa.me` / `api.whatsapp.com` link rather
  than loading a Meta script. That is a genuine privacy advantage over embedded chat widgets —
  nothing third-party executes until the visitor clicks.
- The configured number is **rendered into the page source for every visitor**, so it is
  scrapeable. Use a business number.
- Surface: `src/Form/ConfigForm.php`, `src/Plugin/Block/`, `templates/wab.html.twig`,
  `css/whatsapp_bubble.css`, `config/install`, `config/schema`.
- Where it appears is a block-visibility decision.
