<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Filename extension sanitization — agent index

Removes **duplicated file extensions** from uploaded filenames (collapse `file.php.jpg` / `x.jpg.jpg`) —
mitigates **double-extension upload bypasses** (`shell.php.jpg`). Version **1.0.3**. Core `^8||^9||^10||^11`.

Positive **upload-security hardening** (defense-in-depth) — **complements, not replaces** core protections
(allowed-extensions, `munge_filename`, non-executing upload location). No content-access role.
