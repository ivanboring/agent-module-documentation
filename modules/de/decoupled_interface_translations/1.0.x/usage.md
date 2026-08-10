<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Decoupled Interface Translations allows reading and writing interface translations.

---

Decoupled Interface Translations **exposes reading and writing of interface (locale) translations** — so a
decoupled front-end can fetch Drupal's UI string translations (and, with the right permission, update them),
keeping a headless app's interface strings in sync with Drupal's locale system. It depends on core Locale,
provides its own permissions, in the Multilingual package.

Use it to serve/manage UI translations for a decoupled front-end. It is a multilingual/decoupled feature.
Security note: **writing** translations is a privileged action — gate the write permission to trusted
operators/services (translation strings are output to all users, so a bad actor could inject misleading text);
reading UI strings is generally low-sensitivity. It has no broader access-control role beyond its permissions.
Configure the translation endpoints/permissions.

---

- Read/write interface translations.
- Sync UI strings to a front-end.
- Serve decoupled apps.
- Depend on core Locale.
- Provide its own permissions.
- Keep strings in sync.
- GATE the write permission to trusted operators.
- Know translations output to all users.
- Keep reading low-sensitivity.
- Have no broader access-control role beyond permissions.
- Configure the endpoints/permissions.
- Handle interface translations.
- Serve translations.
- Configure the access.
- Read/write strings.
- Handle the integration.
- Manage translations.
- Sync strings.
- Restrict write access.
- Provide decoupled translations.
