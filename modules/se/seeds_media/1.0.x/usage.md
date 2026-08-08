<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Seeds Media supplies the media types a site normally ends up creating by hand, plus a set of media-library improvements, as the media layer of the Seeds distribution.

---

Every Drupal build repeats the same first hour of media work: create an image type, a document type, a remote-video type, configure their source fields, set up view modes, add a media library view mode, and wire in editing from within the library. None of it is difficult and all of it is identical between projects.

This module ships that configuration. It also pulls in `media_library_edit`, which adds the ability to edit a media item without leaving the library — a small thing that changes how editors actually work, because the alternative is opening a second tab and losing the selection.

The permission set deserves attention before enabling. Alongside `administer seeds media` there is **`bypass default media access`**, which does what it says: it disables the normal media access checks for whoever holds it. That is a legitimate thing for a distribution to offer — media access in Drupal is genuinely awkward, and a distribution has to give site builders an escape hatch — but it is a permission to grant deliberately and to a named role, not to hand out with the editor bundle.

Its dependency footprint is much lighter than its sibling `seeds_editor`: nine core modules and one contrib.

---

- Get standard media types without creating them.
- Provide an image media type.
- Provide a document media type.
- Provide a remote video media type.
- Edit a media item from inside the library.
- Configure media view modes consistently.
- Standardise media across environments.
- Start a Seeds distribution site.
- Add media library view modes.
- Skip an hour of repeated media setup.
- Grant bypass default media access deliberately.
- Audit who holds bypass default media access.
- Restrict media configuration with administer seeds media.
- Pair with seeds_editor for embedding.
- Adopt on a greenfield build rather than an existing one.
- Review shipped media types before enabling on an existing site.