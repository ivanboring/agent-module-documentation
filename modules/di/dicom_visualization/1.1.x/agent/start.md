<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# DICOM Visualization — agent index

Provides a **file formatter/widget to display DICOM (.dcm) medical imaging files**. Depends on core `file`.
Version **1.1.3**. Core `^9.3||^10||^11`.

Media/imaging — **DICOM is medical data / PHI** (patient IDs in metadata): store under a **private:// scheme** with
access control (public files are world-readable), handle per HIPAA/GDPR. No access role of its own — rely on core
file/entity access.
