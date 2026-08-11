<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Camera Capture provides a form to take a photo or short video from the browser camera and store it.

---

Camera Capture adds a form that uses the browser's camera to capture a photo or a short (10-second) video and saves it as a managed file in the public files directory. It's handy for capturing images/clips directly in the browser rather than uploading pre-existing files.

The form (`/camera-capture`) is gated by `access content`. File handling is safe: it accepts only `data:image/png` / `data:video/webm` payloads and writes with server-generated names and fixed `.png`/`.webm` extensions (no attacker-controlled extension). Supports Drupal 10 and 11.

---

- Capture a photo from the browser camera.
- Capture a 10-second video.
- Save captures as managed files.
- Store in the public files directory.
- Provide a capture form.
- Gate the form with `access content`.
- Accept only png image / webm video data URLs.
- Write server-generated filenames.
- Use fixed `.png`/`.webm` extensions.
- Avoid attacker-controlled extensions.
- Support Drupal 10 and 11.
- Capture media in-browser.
- Avoid pre-existing-file uploads.
- Decode base64 data URLs.
- Handle image and video capture.
- Act as a utility.
- Save directly to Drupal files.
- Support quick media capture.
