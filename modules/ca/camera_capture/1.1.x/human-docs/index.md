# Camera Capture — manual setup guide

**Camera Capture** (`camera_capture`) adds a form that uses the visitor's browser
camera to take a photo or a short (up to 10‑second) video, and saves the result as
a managed file in Drupal's public files directory. It's handy when you want people
to capture media on the spot rather than upload a file they already have.

The capture form lives at `/camera-capture` and is gated by the core **access
content** permission. File handling is deliberately safe: the form accepts only
`data:image/png` and `data:video/webm` payloads, decodes them, and writes them with
server‑generated names and fixed `.png` / `.webm` extensions — so the person doing
the capture never controls the filename or extension.

There is no settings page; the module works once enabled and the form is reachable
at its path. It supports Drupal 10 and 11.

This guide is written for a **human** clicking through the admin UI. If you want
terse, token‑cheap references for an AI coding agent, read the sibling
[`agent/`](../agent/start.md) docs instead.

## Contents

1. [Installation](installation/index.md) — install the module with Composer and
   enable it.

## How to use it

Once the module is enabled, send users to `/camera-capture`. Anyone with the
**access content** permission (which anonymous and authenticated users usually have
by default) can open the form, grant the browser camera permission when prompted,
and capture a photo or a short video. Each capture is saved as a managed file in
the `public://` directory, so it becomes a normal Drupal file you can reference
elsewhere.

Because the form is reachable by anyone with **access content**, review that
permission for your site if you don't want captures to be open to all visitors.
