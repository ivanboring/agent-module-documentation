<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# File Upload Options (file_upload_options) — agent index

Additional configuration for how **file fields** accept uploads. Settings behind
`administer file upload options` (**`restrict access: TRUE`** — appropriate, upload options are
upload security). Package `Media`. Version **8.x-1.1**.
Core requirement `^8 || ^9 || ^10 || ^11`.

**Keep this framing throughout: the allowed-extension list is the primary control on what a site
accepts.** Anything changing it is changing a **security boundary**, not a convenience.

**Three things that follow:**
1. **Extension checks are what Drupal actually enforces — not MIME type.** A file's declared type is
   a **claim** (`filemime`, wave 78, documents that from the other side). **Widening extensions is
   the risk**; widening MIME handling mostly is not.
2. **`.htaccess` in the files directory is what stops execution.** Core writes one denying PHP
   execution in the public files directory — any option changing the **upload destination** must
   land somewhere that file still applies. A destination outside it is where uploaded-file
   vulnerabilities come from.
3. **Per-role or per-field relaxation deserves the care of a permission grant.** "Editors may upload
   SVG" is a decision to accept **files that execute script in the browser** — a real and sometimes
   defensible trade, but not one to make from a settings form without noticing.

What core already covers: destination directory, maximum size, allowed extensions, description
field.
