<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# File Temporary Validator (file_temporary_validator) — agent index

Adds **duplication checking for temporary files** during upload validation.
Version **1.0.0-beta4** (**beta**). Core `^10 || ^11`. Depends on `file`.

**Two things to be clear about:** duplicate detection means hashing file content **during an upload
a user is waiting on** — know the cost before enabling it on a site accepting video or large
documents; and files that look identical are not always interchangeable — deduplicating at the
wrong layer produces surprising ownership and access outcomes. Restricting it to **temporary** files
avoids most of that, but it is the question to ask of any deduplication feature.