<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
EXIF Removal strips EXIF metadata from images on upload, removing embedded data such as GPS location and camera info.

---

EXIF Removal strips EXIF metadata from uploaded images — removing the embedded data (GPS location,
camera model, capture time, and other fields) that cameras and phones write into image files. This is a
privacy control: image EXIF can leak sensitive information, most notably the **GPS coordinates of where a
photo was taken**, so removing it before images are stored/served protects both the site's users and
subjects. It is in the Media package.

Use it wherever users can upload images that will be shown publicly (avatars, gallery photos, submitted
images) to avoid inadvertently publishing location and device metadata. This is a positive privacy control
— the direct mitigation for the EXIF/GPS exposure risk. It processes images on upload and has no
access-control role. Enable it for the relevant image fields/flows.

---

- Strip EXIF from uploaded images.
- Remove GPS location metadata.
- Remove camera/device info.
- Protect user privacy.
- Prevent leaking photo location.
- Process images on upload.
- Apply to public image uploads.
- Protect avatars and gallery photos.
- Remove capture-time metadata.
- Apply a positive privacy control.
- Mitigate EXIF/GPS exposure.
- Have no access-control role.
- Clean image metadata.
- Avoid publishing location data.
- Strip embedded EXIF fields.
- Harden image handling.
- Remove metadata before serving.
- Protect photo subjects.
- Enable for image fields.
- Sanitize uploaded images.
