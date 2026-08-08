<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
DKAN Dataset Archiver archives DKAN dataset resources, storing copies (optionally in remote storage) so data remains available if the source disappears.

---

Open-data portals link to resource files that can move or vanish; an archive preserves them. DKAN Dataset Archiver archives DKAN dataset resources, with a remote-storage submodule for offloading archives. It is DKAN-specific infrastructure. The consideration is that archived copies are data at rest that inherit the sensitivity of the datasets, and remote-storage credentials (for the offload target) are a credential to keep out of plain config; on an open-data portal the datasets are usually public, but confirm before archiving anything non-public.

---

- Archive DKAN dataset resources.
- Preserve data if the source vanishes.
- Store archive copies.
- Offload archives to remote storage.
- Keep an open-data archive.
- Protect remote-storage credentials.
- Confirm dataset sensitivity.
- Archive on a schedule.
- Preserve resource files.
- Support a DKAN portal.
- Enable when needed.
- Keep disabled otherwise.
- Restrict administration.
- Confirm on your site.
- Test before production.
- Review configuration.
- Pair with related modules.
- Verify theme fit.
- Match your use case.
- Confirm compatibility.
- Use deliberately.
- Review after upgrades.