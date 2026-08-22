# Webform DropzoneJS — manual setup guide

**Webform DropzoneJS** (project `dropzonejs_webform`; the module it ships is
`webform_dropzonejs`) adds a **DropzoneJS**-powered file‑upload element to
**Webform**. In place of the plain `<input type="file">` and page‑submit, users
get a drag‑and‑drop area with image previews, per‑file progress, and support for
uploading several files at once — a far friendlier experience for anyone
submitting large or multiple files.

That matters most on exactly the forms people struggle with: a job application
with a CV, a grant submission with supporting documents, a claim with
photographs, a competition entry with artwork. These involve files that are large,
several, or both, often on connections worse than the developer's — and Drupal's
stock widget gives no progress, no preview, and no recovery when an upload fails
near the end. DropzoneJS supplies the interface half of that. It requires the
**Webform** module and the **DropzoneJS** module.

A few things belong in any "nicer uploader" conversation, and they're all about
the server rather than the browser — worth knowing whether or not you act on them
directly:

- **Client‑side validation is a convenience, not a guarantee.** Extension, size,
  and count limits shown in the browser must be enforced again on submission,
  because a decoupled uploader can post whatever it chooses.
- **The upload endpoint should check the caller may write to that field**, not
  merely that they're logged in.
- **Abandoned uploads need collecting**, or a public form can turn into
  unauthenticated disk consumption over time.

This guide is written for a **human** clicking through the admin UI. If you want
terse, token‑cheap references for an AI coding agent, read the sibling
[`agent/`](../agent/start.md) docs instead.

## Contents

1. [Installation](installation/index.md) — install with Composer and enable the
   module (and the DropzoneJS dependency, which isn't pulled in automatically).

There is **no site‑wide settings page** — you add and configure the DropzoneJS
element per webform, described in "How to use it" below.

## Where it lives in the admin menu

Webform DropzoneJS adds no admin settings page of its own. You use it while
building a form under **Structure → Webforms → *(your form)* → Build**
(`/admin/structure/webform/manage/{webform}/element/add`), where **DropzoneJS
file** appears as an element type you can add.

## How to use it

1. Install and enable the module — remembering to enable the **DropzoneJS** module
   too (see [Installation](installation/index.md)).
2. Go to **Structure → Webforms** (`/admin/structure/webform`) and edit (Build) the
   form you want to add uploads to.
3. Click **Add element**, choose the **DropzoneJS file** upload element, and place
   it where you want it on the form.
4. Configure the element's options — the file extensions it accepts, maximum file
   size, and how many files it allows — then save.
5. View the form and confirm the drag‑and‑drop upload area appears with previews
   and progress.

> **Reminder:** treat the browser‑side extension/size/count limits as convenience
> only, and make sure your form and file handling enforce the real limits and
> access checks on the server side.
