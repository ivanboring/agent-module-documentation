<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Drupal Association Extras is a container for features supporting Drupal Association initiatives and programs, built on core's Navigation module.

---

At **1.0.0-alpha1** the module is close to empty: it ships an `.install` file, a test (`LaunchLinkTest`, which suggests the current feature is a link added to the navigation), and nothing else — no `src/` directory, no routing, no permissions, no configuration. The dependency on core `navigation` and the `^11.2` core requirement place it firmly on current Drupal.

That shape is worth reading accurately rather than dismissing. A module published by the Drupal Association at alpha, with a stated purpose of carrying "features to support initiatives and programs", is a placeholder that will accumulate functionality — the useful thing to know today is what it is *for* and that there is not yet much in it. Anything it does add will arrive through the navigation UI.

For now: install it only if you are participating in whatever program it supports and have been told to, and expect its contents to change substantially between alpha releases. There is nothing to configure, and nothing about it that changes site behaviour beyond a navigation link.

---

- Support a Drupal Association initiative on a site.
- Add an Association program link to the navigation.
- Follow the module as Association features are added.
- Understand what an inherited site has installed it for.
- Track an alpha module's scope before adopting.
- Check what a module actually contains at alpha.
- Plan for substantial change between alpha releases.
- Confirm it is only a navigation addition today.
- Decide whether an Association program applies to your site.
- Audit modules installed with no visible effect.
- Uninstall it if the program does not apply.
- Keep core Navigation as a dependency in mind.
- Verify the module's contents before recommending it.
- Track its scope as releases land.
- Report accurately that it adds no configuration.
