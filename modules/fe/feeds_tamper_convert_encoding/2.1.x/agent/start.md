<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Tamper Convert Encoding (feeds_tamper_convert_encoding) — agent index

One **Tamper plugin** converting a value between character encodings. Depends on `tamper` and
core `system (>=8.5.0)`. Core requirement `^8 || ^9 || ^10 || ^11`.

Key facts:
- Whole module: `src/Plugin/` (the Tamper plugin), `.info.yml`, `README.txt`, `LICENSE.txt`.
  No routes, no permissions, no config.
- **Despite the project name it depends on Tamper, not Feeds.** It works anywhere Tamper plugins
  are consumed, so a Feeds importer is the common case but not a requirement.
- Convert **at import**. Once mis-decoded text is stored, recovering the original bytes is
  guesswork and sometimes impossible — the conversion is lossy in the wrong direction.
- Configured per field within the Tamper plugin chain, so different fields in the same importer
  can use different source encodings.
