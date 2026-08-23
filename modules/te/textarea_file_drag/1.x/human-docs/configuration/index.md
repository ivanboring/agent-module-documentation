# Configuration

Textarea File Drag'n'Drop has two things to get right: a short settings form, and
the permission that decides who can upload. Because of how the uploads are
validated, treat both as security decisions.

## Open the settings form

Go to **Configuration → Media → Textarea File Drag'n'Drop**
(`/admin/config/media/textarea-file-drag`). You need the **Administer site
configuration** permission to open it.

## The settings

- **Allowed extensions** — a space-separated allowlist of file extensions that
  may be dropped. The default is:

  ```
  jpg jpeg png gif webp svg zip rar 7z xls xlsx doc docx pdf txt
  ```

  This is matched against the file's client-declared extension. **Tighten it to
  only what you actually need**, and in particular consider removing `svg` and
  the archive types (`zip`, `rar`, `7z`) — see the hardening notes below.

- **Upload path** — the destination for uploaded files, given as a stream-wrapper
  path. The default is `public://inline`. Files are moved straight here in the
  public filesystem.

## The permission

Grant `dragndrop files to textarea` (on **People → Permissions**) only to trusted
roles. This single permission both:

- switches on the drop zone on textareas, and
- authorises the `/ajax/textarea-file-drag` upload endpoint.

So anyone who holds it can upload files through the endpoint. Do not give it to
untrusted or anonymous users.

## Hardening notes — please read

The upload handling is deliberately simple, and that carries risk:

- **Validation is by client-declared extension only.** There is no MIME sniffing
  and no file-size cap, so the checks can be bypassed by a determined uploader and
  there is nothing to stop very large files.
- **SVG is dangerous to allow.** An SVG file can contain embedded scripts. Because
  uploads are served from the public filesystem, an uploaded SVG can execute
  script in a visitor's browser — a stored cross-site-scripting (XSS) risk.
  Remove `svg` from the allowlist unless you fully trust everyone with the upload
  permission.
- **No managed file entity is created.** Files are moved directly into the public
  filesystem, so Drupal does not track them, and they are not garbage-collected
  when the referencing content changes. Housekeeping is on you.

The filename itself is sanitised automatically (transliterated and stripped to
safe characters) when the file is stored, so that part is handled for you — but
the extension and content-type concerns above are not.
