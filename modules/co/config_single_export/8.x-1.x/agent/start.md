<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Configuration Single Export (config_single_export) — agent index

Adds a **Download** button to core's single configuration export page, so the YAML arrives as a
correctly named file rather than a textarea. Depends on core `config`; route requires
**`export configuration`**. Tagged `developer`. Version **8.x-1.4**.
Core requirement `^9 || ^10 || ^11`.

**Know this before enabling it.** The module writes the export to the temp directory and implements
`hook_file_download()` so core can serve it — but the hook returns headers for **every file in the
`temporary://` scheme**, with no check the file is one it wrote:

```php
function config_single_export_file_download($uri) {
  if ($scheme == 'temporary') {
    return ['Content-disposition' => 'attachment; filename="' . $target . '"'];
  }
}
```

**Verified:** a role holding only `export configuration` downloaded an unrelated file from the temp
directory by name. That permission is granted routinely to site builders to copy YAML out of the
UI — **it is not meant to be a filesystem read**.

Scope and qualifications:
- what it reaches depends on the temp directory, which here is **`/tmp` — the system temp directory
  shared with every process on the host**;
- filenames must be **known or guessed** (single path segment, no traversal, no listing);
- the web server may block some extensions independently (nginx returned 403 for `.sql` in testing).

Also: `Content-Disposition` is built by string concatenation rather than
`ResponseHeaderBag::makeDisposition()`, so quoting and RFC 5987 encoding are both wrong.
