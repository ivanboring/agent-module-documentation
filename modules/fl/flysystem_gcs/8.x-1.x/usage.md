<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Flysystem GCS registers Google Cloud Storage as a Flysystem adapter, so a GCS bucket becomes a Drupal stream wrapper usable as the default file system or per field.

---

Once Flysystem is in place, Drupal treats a remote bucket like any other scheme: `gcs://` behaves as `public://` does, and image styles, file fields and media all work through the same APIs. This module is the adapter half — `Flysystem/GoogleCloudStorage` as the plugin and `Flysystem/Adapter/GoogleCloudStorageAdapter` underneath — and the configuration lives in `settings.php` under Flysystem's own `$settings['flysystem']` array, not in a Drupal admin form.

Choosing it is usually a scaling or portability decision: containers with ephemeral disks, multiple web nodes that must not each hold their own copy of the files directory, or a policy that user uploads live in object storage. You can adopt it wholesale as the default scheme or selectively per file/image field, which is the safer way to start.

Two practical cautions. The release is **8.x-1.0-beta3** with a core range covering four majors — a declaration of intent rather than evidence of testing on Drupal 11, so verify uploads, image derivative generation and private-file handling on a copy of the site before switching production. And the GCS credentials are a real secret: keep the service-account key out of the repository, supply it through an environment variable, and reference it from `settings.php` with `getenv()` rather than pasting JSON into a config file.

---

- Store user uploads in a Google Cloud Storage bucket.
- Use GCS as the site's default public file system.
- Point a single image field at GCS while others stay local.
- Serve files from GCS across several web nodes.
- Keep files out of an ephemeral container filesystem.
- Move an existing files directory to object storage.
- Generate image styles against remote files.
- Attach media entities to GCS-backed files.
- Reduce the size of a site's disk footprint and backups.
- Satisfy a policy that uploads live in cloud storage.
- Share one bucket between environments deliberately.
- Configure the adapter entirely from `settings.php`.
- Supply GCS credentials from an environment variable.
- Test image derivative generation before switching production.
- Combine GCS with a CDN in front of the bucket.
- Roll back to local storage by changing the scheme.