<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Media Remote Image (media_entity_remote_image) — agent index

**Media source** for remotely hosted images — stores a URL, not a file, while the media entity
participates fully in the media system (library, fields, WYSIWYG, media access). Depends on core
`link` and `media (>= 8.4)`. Settings at
`/admin/config/media/media-entity-remote-image-settings` behind `administer site configuration`.
Version **8.x-1.2-beta2** — beta. Core requirement `^8 || ^9 || ^10 || ^11`.

**Where it is the right answer:** a DAM is the authoritative home for the organisation's
photography; a partner supplies imagery on their own CDN under their own licence; a supplier's
system owns the product photos. Re-uploading creates a second copy that immediately drifts.

**What is given up — more than it first appears:**
- **Image styles need the file.** Derivatives, responsive images and cropping either do not apply
  or require fetching the remote file anyway.
- **Availability is someone else's.** A broken remote URL is a broken image with no local fallback,
  and it fails **silently** until someone looks.
- **Server-side URL fetching is an SSRF surface.** Any feature that resolves a user-supplied URL
  from the server — dimension check, thumbnail, proxy — must exclude internal addresses. Confirm
  whether the module fetches at all before assuming either way.
