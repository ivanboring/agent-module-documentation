<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
DICOM Visualization provides a file formatter/widget to display DICOM (.dcm) medical imaging files.

---

DICOM Visualization **provides a file formatter and widget for DICOM (.dcm) files** — supporting the upload
and in-browser viewing of DICOM (Digital Imaging and Communications in Medicine) medical-imaging files. It depends
on core File.

Use it to display medical imaging. It is a media/field feature. Data-handling note: **DICOM files are medical data
(PHI)** and can embed patient identifiers in their metadata — store them under a **private file scheme** with
appropriate access control (core public files are world-readable), and handle them per HIPAA/GDPR and your
healthcare data policy. It has no access-control role of its own, so rely on Drupal's file/entity access. Configure
the DICOM field/formatter.

---

- Display DICOM (.dcm) files.
- Provide a file formatter + widget.
- Support in-browser DICOM viewing.
- Depend on core File.
- Serve media/imaging.
- View medical images.
- TREAT DICOM as medical data / PHI (patient identifiers in metadata).
- Store under a private file scheme with access control (public files are world-readable).
- Handle per HIPAA/GDPR + healthcare data policy.
- Rely on Drupal file/entity access (no access role of its own).
- Configure the DICOM field/formatter.
- Handle DICOM files.
- View DICOM.
- Configure the formatter.
- Show medical images.
- Handle the widget.
- Display .dcm files.
- Render DICOM.
- Secure the files.
- Provide DICOM visualization.
