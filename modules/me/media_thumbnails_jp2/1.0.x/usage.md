<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Media Thumbnails Jp2 is a plugin for the Media Thumbnails framework that generates JPEG preview thumbnails for JP2 (JPEG 2000, `image/jp2`) media entities.

---

JP2 is not renderable by browsers, so media entities backed by JP2 files have no usable preview. This module registers a `@MediaThumbnail` plugin (`MediaThumbnailJp2`) scoped to the `image/jp2` MIME type; the framework invokes its `createThumbnail()` when such media is created, which resizes the JP2 to a configurable width and writes a managed `.jpg` thumbnail alongside the source (falling back to the generic media icon if generation fails). It requires the ImageMagick/Imagick support to be present on the server (with JP2 delegate support compiled into ImageMagick) and is a small, route-less, permission-less add-on to the Media Thumbnails project.

**Security note — command injection.** The thumbnail generation does not use the Imagick PHP API for the resize step; instead it builds a shell command string by concatenating the file path and filename directly into `convert ... -resize ... /tmp/<filename>.jpg` and runs it with `exec()` (`src/Plugin/MediaThumbnail/MediaThumbnailJp2.php:42-43`). The filename portion derives from the uploaded media file, which a user who can add JP2 media typically controls, and it is neither escaped nor passed as an argument array — so a file named to include shell metacharacters (`;`, `$(...)`, backticks, `|`) can inject arbitrary OS commands executed as the web-server user. It also writes to a predictable `/tmp/<filename>.jpg` path and has a dead `catch (\ImagickException)` around an `exec()` that never throws it. Sites should not deploy this as-is where untrusted users can upload media; the fix is to use `escapeshellarg()` or, better, the Imagick API (`readImage`/`resizeImage`) instead of `exec()`. Setup: ensure ImageMagick with JP2 support and the Imagick PHP extension are installed, then enable the module; thumbnails are produced automatically on JP2 media creation.

---

- Generate a JPEG preview thumbnail for a JP2 (JPEG 2000) media entity
- Add usable previews for browser-unrenderable JP2 files
- Produce thumbnails automatically when JP2 media is created
- Resize the source to a configurable thumbnail width (default 500px)
- Show JP2 previews in Views via the media thumbnail field
- Show JP2 previews in media entity display modes
- Apply a Drupal image style on top of the generated thumbnail
- Fall back to the generic media icon when generation fails
- Extend the Media Thumbnails framework for the `image/jp2` MIME type
- Require ImageMagick with JP2 delegate support plus the Imagick PHP extension
- Install as a thin add-on to the media_thumbnails project
- Review generated thumbnails written alongside the source as `<uri>.jpg`
- Audit the `exec()` call before allowing untrusted users to upload media
- Avoid deploying as-is where uploaders are untrusted (command-injection risk)
- Fix the injection risk with `escapeshellarg()` or the Imagick API
- Understand the module has no routes, permissions, or config forms of its own
