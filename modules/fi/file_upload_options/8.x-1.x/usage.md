<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
File Upload Options adds configuration for how file fields accept uploads, beyond what core's field settings expose.

---

Core's file field settings cover the destination directory, a maximum size, allowed extensions and a description field, which handles most cases and leaves gaps that every site with serious file handling notices: renaming on upload, per-role limits, behaviour when a file of the same name exists, and control over what the widget shows. Version **8.x-1.1** on `^8` through `^11`, in the Media package, with settings behind an `administer file upload options` permission correctly marked `restrict access: TRUE` — appropriate, because upload options are upload security. That is the framing to keep throughout: **the allowed-extension list is the primary control on what a site accepts**, and anything that changes it is changing a security boundary rather than a convenience. Three things follow. **Extension checks are what Drupal actually enforces**, not MIME type — a file's declared type is a claim (`filemime`, wave 78, documents that from the other side), so widening extensions is the risk and widening MIME handling mostly is not. **`.htaccess` in the files directory is what stops execution**: core writes one denying PHP execution in the public files directory, and any option that changes the upload destination must land somewhere that file still applies — a destination outside it is where uploaded-file vulnerabilities come from. And **per-role or per-field relaxation deserves the same care as a permission grant**, because "editors may upload SVG" is a decision to accept files that execute script in the browser, which is a real trade and a defensible one, but not one to make from a settings form without noticing.

---

- Set a maximum size per file field.
- Rename files on upload.
- Handle duplicate filenames.
- Configure upload behaviour per field.
- Restrict extensions more tightly.
- Set per-role upload limits.
- Change the upload destination.
- Configure the upload widget's display.
- Support a document library's rules.
- Standardise upload settings site-wide.
- Restrict uploads on a public form.
- Allow a specific extension for one field.
- Configure file replacement behaviour.
- Support a media governance policy.
- Limit uploads for untrusted roles.
- Configure a private file destination.
- Apply consistent upload rules.
- Adjust upload options without code.
