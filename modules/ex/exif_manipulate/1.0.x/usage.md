<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Exif Manipulate removes/cleans EXIF metadata from uploaded images, stripping embedded data such as GPS and camera info.

---

Exif Manipulate cleans EXIF metadata from uploaded images — stripping the embedded data (GPS location,
camera model, timestamps) that image files carry, before they are stored/served. Like other EXIF-removal
tools, it is a privacy control: image EXIF can leak sensitive information, most importantly the **GPS
coordinates where a photo was taken**.

Use it wherever users upload images shown publicly (avatars, galleries, submissions) to avoid publishing
location/device metadata. This is a positive privacy control. It processes images on upload and has no
access-control role. Enable it for the relevant image flows. (It is one of several EXIF-stripping options
alongside `exif_removal`.)

---

- Clean EXIF from uploaded images.
- Strip GPS location metadata.
- Remove camera/device info.
- Protect user privacy.
- Prevent leaking photo location.
- Process images on upload.
- Apply to public image uploads.
- Protect avatars and galleries.
- Apply a positive privacy control.
- Mitigate EXIF/GPS exposure.
- Have no access-control role.
- Clean image metadata.
- Avoid publishing location data.
- Strip embedded EXIF.
- Harden image handling.
- Remove metadata before serving.
- Protect photo subjects.
- Sanitize uploaded images.
- Enable for image flows.
- Remove timestamps.
