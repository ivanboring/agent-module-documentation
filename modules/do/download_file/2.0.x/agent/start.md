<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Download File (download_file) — agent index

A file-field formatter plus a controller that force downloads. No config form, no permissions of
its own, no schema, no Drush. Requires core `file`.

Key facts:
- Formatter **`@FieldFormatter(id = "direct_download", label = "Direct Download")`**
  (`DirectDownloadFormatter`) — set it on a file field's view display.
- Route `download_file.download_file_path` — `/download/file/{file}`, parameter upcast to
  `entity:file`, controller
  `DownloadFileController::downloadFileDirectDownload(FileInterface $file): BinaryFileResponse`.
- **Access**: `_custom_access: DownloadFileController::access`, whose whole body is
  `return $file->access('download', $account, TRUE);`. So private-file access, `file_download`
  hooks and any contrib access rules are honoured — the module adds no bypass and no permission of
  its own.
- Response: `new BinaryFileResponse($file->getFileUri(), 200, $headers)` with download headers.
- Alter hook: `hook_download_file_headers_alter(array &$headers, FileInterface $file): void` —
  documented example sets `$headers['Expires'] = 0`.
- Template `templates/direct-download-file-link.html.twig` for the rendered link.

```bash
drush cset core.entity_view_display.node.article.default \
  content.field_attachment.type direct_download -y
drush cr
```

```php
// Adjust headers for one file type.
function mymodule_download_file_headers_alter(array &$headers, \Drupal\file\FileInterface $file): void {
  if ($file->getMimeType() === 'application/pdf') {
    $headers['Cache-Control'] = 'private, max-age=0, must-revalidate';
  }
}
```

Notes:
- Downloads stream through PHP, so very large files bypass any web-server-level `X-Sendfile`
  optimisation unless you add it via the headers hook.
- The route takes a **file entity id**, so files without a `file` entity (raw paths) are not
  supported.
