<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Drutopia User is a configuration-only base feature that standardises how user accounts are displayed and edited on a Drutopia site.
---
The module has no PHP logic; it ships exported entity display config in `config/install`: the default user view display, the default user form display, and a `compact` user view display. It depends only on core modules (field, file, image, path, user), so it simply layers consistent account presentation onto a stock Drupal user entity.

There are no routes, services, permissions, or controllers, so the module exposes nothing to anonymous users on its own. Setup is limited to enabling the module; further tuning happens through the standard "Manage display"/"Manage form display" UIs for the user entity.
---
- Standardise the user profile view display across Drutopia sites.
- Standardise the user registration/edit form display.
- Provide a `compact` user view mode for listings.
- Ship a consistent account presentation with a distribution.
- Serve as the user-config layer beneath drutopia_people/drutopia_core.
- Adjust field ordering on the user form via Manage form display.
- Add/remove fields shown on user profiles via Manage display.
- Enable the compact view mode where a terse profile is needed.
- Keep account UX consistent when spinning up new sites.
- Re-export overrides into a site-specific feature.
- Combine with drutopia_site and drutopia_social for a base install.
- Reset user display config by reinstalling the module.
- Expose an avatar/image field on the profile display.
- Hide sensitive account fields from the public profile.
- Set a terse compact profile for teaser/reference contexts.
- Keep registration-form field order consistent site-wide.
