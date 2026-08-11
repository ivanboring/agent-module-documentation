<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
FFmpeg Image Toolkit allows applying image styles to animated GIFs and PNGs.

---

FFmpeg Image Toolkit **applies image styles to animated GIFs and PNGs** — an image toolkit (an alternative to
core GD/ImageMagick) that uses the external **`ffmpeg`** binary to perform image-style operations (crop, resize)
on animated images. It requires the `ffmpeg` executable installed on the server.

Use it when you need image styles on animated GIF/PNG. It is a media/image feature with a serious security caveat
in the way it invokes ffmpeg. **Command construction is unsafe:** `Ffmpeg::execute()` builds a single shell string
and runs it with `\exec($command)`; the source image path is embedded **double-quoted** (`-i "<realpath>"`) and the
only sanitisation is a blocklist rejecting `;`, `|`, `>` and `&` — which **misses backtick, `$`, `(`, `)` and the
double-quote itself**, all active inside a double-quoted shell context. The path comes from the processed image's
real filesystem path, so a source image whose **filename** contains `` `cmd` `` or `$(cmd)` (an uploaded file named
like ``x$(id).png``) can inject commands executed as the web user when a derivative is generated. This is a
**command-injection → RCE** risk that applies when this FFmpeg toolkit is selected as the site's image toolkit
(non-default) and an attacker can influence a processed filename. Until fixed upstream (pass arguments via an argv
array / Symfony `Process`, or `escapeshellarg()` every path), avoid selecting this toolkit on sites with untrusted
uploads, and constrain uploaded filenames. This is recorded as a campaign security finding. Configure the image
toolkit carefully.

---

- Apply image styles to animated GIFs/PNGs.
- Use the external ffmpeg binary.
- Act as an alternative image toolkit.
- Require ffmpeg installed on the server.
- Serve media/image processing.
- Run crop/resize via ffmpeg.
- BUILD an unsafe shell string run with exec() (SECURITY).
- Embed the source realpath double-quoted with a blocklist missing backtick/$()/quote.
- ALLOW command injection via a crafted source FILENAME (RCE as the web user).
- Apply when this FFmpeg toolkit is selected (non-default) + a filename is attacker-influenced.
- Avoid it on sites with untrusted uploads until fixed (prefer argv/escapeshellarg).
- Configure the image toolkit carefully.
- Handle animated image styles.
- Process animated images.
- Configure the toolkit.
- Resize/crop GIFs.
- Handle the ffmpeg call.
- Generate derivatives.
- Constrain filenames.
- Provide an FFmpeg image toolkit.
