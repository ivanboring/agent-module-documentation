<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Custom Twig Formatter — agent index

A field **formatter rendering fields using admin-written custom Twig code** (format output with Twig without
template files). Depends on core `field`. Version **2.1.0-alpha1**. Core `^9||^10||^11`.

**Security:** evaluates **admin-authored Twig** — a **trusted-admin capability** (Drupal's Twig **sandbox**
restricts dangerous functions, mitigating risk, but the configurer crafts markup). Restrict who configures
field displays; never expose the formatter config to untrusted users. Rendered field content respects its own
access.
