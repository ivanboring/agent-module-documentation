<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
IMCE Copy Link adds a button to the IMCE file browser that copies the selected file's URL to the clipboard, so an editor who needs a link to a file does not have to reconstruct it by hand.

---

IMCE is the long-standing file browser used for picking files in editors and file fields, and it does that job well. What it does not offer is the adjacent task: "I need the URL of this file to paste somewhere else" — into an email, a spreadsheet, another system, or a link in a different piece of content. Without a copy control, editors either right-click through the browser's preview or work out the public files path by hand, both of which are error-prone. This module adds the button as an IMCE plugin (`src/Plugin`), with `imce_copylink.js`, a stylesheet and an SVG icon. It depends on `imce` alone and spans `^8 || ^9 || ^10 || ^11`. One thing worth knowing about clipboard access in browsers: the Clipboard API requires a **secure context**, so on a site served over plain HTTP the copy may silently fail — which on a development environment without TLS looks like the module being broken when it is the browser's policy.

---

- Copy a file's URL from the IMCE browser.
- Share a link to an uploaded document.
- Paste a file URL into an email.
- Avoid reconstructing a file path by hand.
- Give editors a quick link-copy action.
- Reference a file from another system.
- Copy an image URL for external use.
- Reduce errors in manually typed paths.
- Support an editorial file workflow.
- Link to a PDF from a newsletter.
- Copy a link during content authoring.
- Share a file with a colleague.
- Reference an uploaded asset in a ticket.
- Speed up file linking.
- Reduce support requests about file URLs.
- Copy links from a shared file library.
- Support a documentation workflow.
- Work alongside IMCE's existing browser.
