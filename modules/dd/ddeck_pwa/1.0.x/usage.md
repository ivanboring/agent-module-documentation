<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
DDECK PWA layers iOS/UX enhancements — a bottom navigation bar, Apple home-screen meta tags, splash screens and theme-controlled manifest icons — on top of the contrib PWA module.
---
The module fills iOS and UX gaps left by the base PWA module. `hook_page_attachments_alter` injects Apple-specific meta tags (apple-mobile-web-app-capable, status-bar style, app title) and splash-screen `<link>`s for many device resolutions (only for images that actually exist under the active theme's `/pwa/` directory), `hook_preprocess_html` renders a navigation SDC component when enabled, and `hook_pwa_manifest_alter` swaps manifest icons for theme-provided ones. It relies on core SDC and the `pwa` module for the manifest/service worker.

The only route is the settings form at `/admin/config/services/ddeck-pwa`, gated by `administer ddeck pwa`. Config values are plain labels (Apple app title, navigation toggle); splash/icon hrefs are built from the trusted active-theme path and validated with `file_exists`, not from user input. Set up by enabling the module, setting the Apple app title and toggling navigation, and placing icon/splash PNGs in your theme's `pwa/` folder.
---
- Turn a Drupal PWA into an installable iOS-friendly app shell
- Set the iOS home-screen app title (falls back to PWA app name)
- Enable or disable the PWA bottom navigation bar
- Serve Apple splash screens for many iPhone/iPad resolutions
- Provide theme-controlled manifest icons (72-512px)
- Add apple-mobile-web-app-capable / status-bar meta tags
- Render a navigation SDC component in page_bottom
- Override PWA icons only when theme icons exist (graceful fallback)
- Support portrait and landscape startup images
- Scope splash/icon assets per active theme path
- Give an internal platform a native feel
- Ship a loader SDC component for app-shell UX
- Keep manifest/service-worker config in the base PWA module while layering UI
- Link admins from the settings form to the PWA manifest config
- Fall back to the PWA app name when no Apple app title is set
- Present a web app to iOS users as a full-screen standalone app
