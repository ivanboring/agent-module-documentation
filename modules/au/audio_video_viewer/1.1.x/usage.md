<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Audio Video Viewer is a file-field formatter that renders audio and video files with the native HTML5 player, with options to show the file name, size and handle unrecognised formats.
---
The module adds a field formatter selectable on a file field's Manage Display tab. It uses HTML5 `<audio>`/`<video>` tags so playback relies on the browser's native codec support. Display options include showing the file's name as a link to the file, showing the file size, a maximum file-size threshold (in bytes; files above it are not rendered, `0` = no limit), and an option to render nothing when a file's format isn't recognised (so it can be paired with the Fallback Formatter module).

Configuration is per-display; the module also exposes a small admin settings form at `/admin/config/user-interface/audio_video_viewer` (`administer site configuration`). It is a display-only module — no outbound calls, no secrets, no mutating endpoints.
---
- Play an audio file directly on a node page.
- Play a video file with the HTML5 player.
- Select the formatter on a file field's Manage Display.
- Show the file name with a link to the file.
- Display the file size next to the player.
- Set a maximum file size beyond which files aren't rendered.
- Treat 0 bytes as no size limit.
- Hide content when a file format isn't recognised.
- Pair with the Fallback Formatter module.
- Rely on native browser codec support for playback.
- Configure display options per view mode.
- Provide accessible audio/video playback.
- Present research media files (SDSC) on the site.
- Avoid embedding a third-party JS player.
- Adjust global defaults on the settings form.
- Offer a download link alongside playback.