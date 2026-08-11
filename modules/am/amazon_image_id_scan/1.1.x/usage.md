<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Amazon Image ID Scan loads images from S3 using an image identifier.

---

Amazon Image ID Scan provides functionality to scan and load images from Amazon S3 by an image ID — so images stored on S3 can be referenced/loaded into Drupal by identifier, useful for sites whose media lives in S3.

S3 credentials should be stored securely (env-backed). Loading from S3 is gated by an `amazon_image_id_scan load_s3` permission. Supports Drupal 8.8 through 11.

---

- Load images from Amazon S3 by ID.
- Scan S3 for images.
- Reference S3 images by identifier.
- Serve S3-hosted media.
- Store S3 credentials securely (env-backed).
- Gate loading with `amazon_image_id_scan load_s3`.
- Support Drupal 8.8 through 11.
- Carry no content role beyond the permission.
- Configure the S3 connection.
- Integrate S3.
- Handle image IDs.
- Support cloud media.
- Fetch S3 images
- Keep credentials secure
- Reference remote images.
- Load by ID.
- Support S3.
- Manage cloud images
