# Configuration

This module has no settings page of its own. You "configure" it by **selecting it
as your site's image toolkit** on Drupal core's image‑toolkit settings page.

## Select FFmpeg as the image toolkit

1. Log in as a user with the **Administer site configuration** permission.
2. Go to **Configuration → Media → Image toolkit**
   (`/admin/config/media/image-toolkit`).
3. Choose **FFmpeg Image Toolkit** from the list of available toolkits.
4. If the form exposes a path to the `ffmpeg` binary, make sure it points at the
   executable installed on your server (see
   [Installation](../installation/index.md)).
5. Click **Save configuration**.

From now on Drupal generates image‑style derivatives through FFmpeg, so animated
GIFs and APNGs are processed the same way still images are. The switch is
site‑wide — every image style uses the selected toolkit.

## Understand the trusted‑input requirement before you switch

Selecting this toolkit is the moment the security caveat from the
[overview](../index.md) becomes live. Because the module builds its FFmpeg command
as a shell string and embeds the source file's path with an incomplete blocklist,
a maliciously named source file can inject shell commands that execute as the web
server user when a derivative is built.

Practical guidance:

- **Do not select this toolkit on sites that accept untrusted uploads.** If
  anonymous or low‑trust users can upload files (or otherwise influence a
  processed file's name), the command‑injection risk is real.
- If you must use it, **restrict where processed files come from** and constrain
  filenames so they cannot contain shell metacharacters such as `` ` ``, `$`,
  `(`, `)`, or `"`.
- Prefer to keep it on sites where all image sources are trusted (for example an
  editorial workflow with vetted uploads).
- Watch the module's [issue queue](https://www.drupal.org/project/ffmpeg_image_toolkit)
  for a fix that passes arguments safely (argv array / `escapeshellarg()`), and
  update once one lands.

## Reverting

To stop using it, return to **Configuration → Media → Image toolkit**, select GD
(or another toolkit) again, and save. You can then disable the module if you no
longer need it.
