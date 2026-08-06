<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Configuration Single Export adds a Download button to core's single configuration export page, so the YAML arrives as a file instead of a textarea to select and copy.

---

Core's single export page renders one configuration object's YAML into a textarea. That is fine for reading and awkward for everything else: selecting several hundred lines from a textarea reliably is fussy, browsers add or strip trailing whitespace, and the result has to be pasted into a file with the right name — which is the part people get wrong, because a config file's name is not obvious from its contents. A download button produces the file, named correctly, in one click. Version **8.x-1.4** on `^9 || ^10 || ^11`, depending on core `config`, tagged `developer`. **There is a defect worth knowing before enabling it.** The module writes the export into the temp directory and implements `hook_file_download()` to let core serve it — but that hook returns headers for **every** file in the `temporary://` scheme, with no check that the file is one it wrote. Verified on a clean install: a user holding only `export configuration` downloaded an unrelated file from the temp directory by name. `export configuration` is a permission granted routinely to site builders so they can copy a config object's YAML; it is not meant to be a filesystem read. What that reaches depends on what is in the temp directory, which on this install is `/tmp` — the system temp directory shared with every process on the host. Filenames have to be known or guessed and no listing is offered, so it is not a browse; it is still a wider grant than the permission implies.

---

- Download a config object's YAML.
- Export a view's configuration to a file.
- Avoid copying from a textarea.
- Save a config export with the right filename.
- Export a field's configuration.
- Copy configuration between sites.
- Save a content type's config.
- Export configuration for review.
- Download a config object for a patch.
- Share a view's configuration.
- Export a workflow's config.
- Save configuration for a bug report.
- Export a text format's settings.
- Download config for version control.
- Export a block's configuration.
- Save a menu's configuration.
- Export config without the CLI.
- Download a single config file.
