<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Link File Browser — agent index

**Adds a file-explorer button to the link field widget** for picking files from a configured (`public://`) folder.
Provides permissions. Version **1.0.7**. Core `^10||^11||^12`.

**SECURITY (campaign finding, Danger 3)** — `ajax/list-files` (permission `view link file browser`) builds the
`scandir` path from **client-controlled `directory`/`root`** with only `//`→`/` (no `../` stripping), so a permitted
user can **traverse + enumerate arbitrary server directories** (names/paths as JSON, recursive). It's an
editor-level permission. Grant `view link file browser` only to trusted users; fix = confine to an allowed base via
`realpath()` + `str_starts_with`.
