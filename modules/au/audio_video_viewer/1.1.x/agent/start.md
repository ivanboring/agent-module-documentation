<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Audio Video Viewer (audio_video_viewer) — agent index

**File-field formatter that renders audio/video with the native HTML5 player, with name/size/limit options.**

- **Version:** 1.1.x (1.1.0-beta1)  •  **Core:** ^10 || ^11  •  **Package:** SDSC
- **Route:** `audio_video_viewer.admin_settings` `/admin/config/user-interface/audio_video_viewer` (`administer site configuration`).
- **Config:** `audio_video_viewer.settings`.  **Formatter:** selectable on file fields (Manage Display).  **Library:** `audio_video_viewer/*`.

**Security:** single admin settings route; display-only formatter with no outbound calls, secrets, or mutating endpoints. No security-relevant surface.
