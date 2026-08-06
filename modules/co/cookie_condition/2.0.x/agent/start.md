<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Cookie Condition (cookie_condition) — agent index

One condition plugin — `Plugin/Condition/Cookie` — matching on a cookie name and optional value.
Version **2.0.1**. Core `^8 || ^9 || ^10 || ^11`. No dependencies, no permissions, no routes.

Usable anywhere Drupal collects condition plugins; block visibility is the common case.

**Two things to say every time:**

1. **Not an access control.** Cookies are client-supplied and trivially forged. This decides what
   is *displayed*, never what is *permitted*. Anything sensitive needs a permission or entity
   access check; use the cookie for presentation only.
2. **Cache correctly.** Output varying by cookie needs the matching cache context, or the first
   response is reused for everyone. Verify what the consuming code declares.