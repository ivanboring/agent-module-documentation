<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Well-Known Paths lets an administrator define `/.well-known/` URLs and their content from the Drupal UI, instead of dropping files into the docroot and hoping the next deployment preserves them.

---

The `.well-known` prefix (RFC 8615) is where the web keeps its machine-readable metadata: `security.txt` for vulnerability disclosure contacts, `apple-app-site-association` and `assetlinks.json` for mobile app deep-link verification, domain-ownership proofs for various services, and more. Serving them normally means a static file in the docroot, which is awkward on a Composer-managed site where the docroot is built by deployment and any hand-placed file is at risk of being cleaned away. This module makes them configuration instead: a settings form at `/admin/config/development/well-known` (gated by `administer site configuration`) defines path and content, and a **dynamic route provider** in `src/Routing` registers the routes so a controller can serve them. Because the definitions are config, they export with `drush cex` and deploy like everything else. Note the unusual directory layout — `schema/` and `install/` rather than `config/schema` and `config/install` — and that the release is **1.0.0-alpha2**, an alpha. Anything served here is public by definition, so the content is a publication decision: `security.txt` is meant to be public, a verification token is a secret that happens to be published, and neither should be confused for the other.

---

- Serve a security.txt file for vulnerability disclosure.
- Publish an apple-app-site-association file.
- Serve assetlinks.json for Android deep links.
- Prove domain ownership to a third-party service.
- Add a .well-known path without touching the docroot.
- Keep well-known files through a deployment.
- Manage well-known content as configuration.
- Export well-known paths with site config.
- Change a verification token without a deploy.
- Serve a change-password well-known URL.
- Support a bug bounty programme's requirements.
- Add a path required by a payment provider.
- Publish a machine-readable contact policy.
- Serve openid-configuration metadata.
- Avoid docroot clutter on a Composer site.
- Keep well-known paths identical across environments.
- Add a path required by an app store.
- Meet a compliance requirement for security contacts.
