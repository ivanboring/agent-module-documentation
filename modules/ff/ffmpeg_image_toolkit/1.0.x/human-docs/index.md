# FFmpeg Image Toolkit — manual setup guide

**FFmpeg Image Toolkit** (`ffmpeg_image_toolkit`) is an alternative **image
toolkit** for Drupal. Where core's GD toolkit and the contrib ImageMagick toolkit
struggle with animated images, this one uses the external **`ffmpeg`** binary to
apply your image styles to **animated GIFs and animated PNGs (APNG)** as well as
ordinary still images. All the standard core image effects are supported — Convert,
Crop, Resize, Rotate, Scale, and Scale‑and‑crop.

An image toolkit is the engine Drupal uses behind the scenes when it generates the
derivatives defined by your image styles. This module does not add its own fields
or blocks; instead you *select* it as the site's image toolkit, after which image
styles run through FFmpeg. Because it drives an external program, it needs the
`ffmpeg` executable installed on the server and PHP's `exec()` function available.

> **Security note — read before selecting this toolkit.** The way the module
> builds its FFmpeg command line is unsafe. `Ffmpeg::execute()` assembles a single
> shell string and runs it with PHP's `\exec()`, embedding the source image's file
> path inside double quotes with only a small blocklist (`;`, `|`, `>`, `&`). That
> blocklist **misses backtick, `$`, `(`, `)`, and the double‑quote character** —
> all of which are active inside a double‑quoted shell context. A source file whose
> **filename** contains something like `` `id` `` or `$(id)` can therefore inject
> shell commands that run as the web server user when a derivative is generated —
> a command‑injection → remote‑code‑execution risk. This only bites when this
> FFmpeg toolkit is the selected toolkit (it is not the default) **and** an
> attacker can influence a processed file's name. Until it is fixed upstream (by
> passing arguments as an argv array / Symfony `Process`, or by running every path
> through `escapeshellarg()`), **do not select this toolkit on any site that
> accepts untrusted uploads**, and constrain uploaded filenames.

This guide is written for a **human** clicking through the admin UI. If you want
terse, token‑cheap references for an AI coding agent, read the sibling
[`agent/`](../agent/start.md) docs instead.

## Contents

1. [Installation](installation/index.md) — install the `ffmpeg` binary, then
   install and enable the module with Composer.
2. [Configuration](configuration/index.md) — select FFmpeg as your image toolkit
   and understand the trusted‑input requirement.

## How to use it

Once the module is enabled and selected as the image toolkit, you do not use it
directly — Drupal uses it for you. Any image style you have defined (under
**Configuration → Media → Image styles**) will now be processed through FFmpeg,
which means animated GIFs and APNGs will be cropped, resized, and scaled as
still images already are.
