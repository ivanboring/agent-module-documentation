<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# FFmpeg Image Toolkit — agent index

**Applies image styles to animated GIFs/PNGs by shelling out to `ffmpeg`** (alternative image toolkit; requires
the ffmpeg binary). Version **1.0.2**. Core `^9||^10||^11`.

**SECURITY (campaign finding, Danger 4)** — `Ffmpeg::execute()` runs `\exec()` on a shell string embedding the
source file's realpath **double-quoted**, with a blocklist (`; | > &`) that **misses backtick, `$( )`, and quote**.
A crafted source **filename** (e.g. ``x$(id).png``) injects commands → **RCE** when this FFmpeg toolkit is selected
(non-default) and a filename is attacker-influenced. Avoid on sites with untrusted uploads until fixed (use
argv/`escapeshellarg`).
