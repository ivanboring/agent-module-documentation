<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Microsoft Document Viewer (md_viewer) — agent index

File-field formatter embedding Office documents via Microsoft's hosted viewer.
Version **2.0.1**. Core `^9 || ^10 || ^11`. Depends on `field`, `file`.
No routes, permissions, or config objects.

Classes: `Plugin/Field/FieldFormatter/MDocViewerFieldFormatter`, `Constants/Constants`
(`MD_VIEWER_MDOC_EMBEDD_LINK = "https://view.officeapps.live.com/op/embed.aspx"`). The formatter
builds an absolute file URL with `FileUrlGenerator::generateAbsoluteString()` and passes it as
`?src=`.

**Two structural consequences to state every single time — neither is a bug, both are how it
works.**

1. **The file must be publicly reachable from the internet.** Microsoft's servers fetch it. A
   private-filesystem file, an intranet site, or anything behind HTTP auth will not render. Those
   are the only two outcomes: it renders and the file is public, or it does not render.
2. **Every document shown this way is disclosed to Microsoft.** The URL is handed over and their
   infrastructure retrieves and processes the content. Fine for a published brochure; for personal
   data, commercial confidentiality or an internal audience it needs a decision, and in the EU a
   lawful basis and a privacy-notice entry. Do not attach this formatter to a field that can hold
   restricted documents.