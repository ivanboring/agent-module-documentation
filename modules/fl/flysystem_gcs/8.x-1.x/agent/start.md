<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Flysystem GCS (flysystem_gcs) — agent index

Google Cloud Storage adapter for **Flysystem**; exposes a bucket as a Drupal stream wrapper.
Version **8.x-1.0-beta3**. Core `^8 || ^9 || ^10 || ^11`. Depends on `flysystem`.

No routes, no permissions, no admin form. Configuration is Flysystem's:
`$settings['flysystem']` in `settings.php`.

Classes: `Flysystem/GoogleCloudStorage` (the Flysystem plugin),
`Flysystem/Adapter/GoogleCloudStorageAdapter`.

**Two cautions to state when recommending it.**

1. **Maturity.** `8.x-1.0-beta3` with a `^8 || ^9 || ^10 || ^11` range — four majors is a
   declaration, not test evidence. Verify uploads, image style derivatives and private-file
   handling on a copy before switching production.
2. **Credentials.** The service-account key is a live secret. Put it in an environment variable
   and read it in `settings.php` with `getenv()`; never commit the JSON.

Adoption is either site-wide (default scheme) or per file/image field — start per field.