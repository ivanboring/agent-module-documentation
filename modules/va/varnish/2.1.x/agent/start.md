<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Varnish (varnish) — agent index

**Integrates Drupal with the Varnish HTTP accelerator via its socket-based control (CLI) interface for cache bans and status checks.**

- **Version:** 2.1.x (installed 2.1.0-alpha1)
- **Core:** ^9 || ^10 || ^11
- **Requires:** PHP `sockets` extension
- **Configure route:** `varnish.admin_settings` → `/admin/config/development/varnish` (permission: `administer site configuration`)
- **Settings (`varnish.settings`):** `varnish_control_terminal` (default `127.0.0.1:6082`), `varnish_control_key`, `varnish_socket_timeout` (ms), `varnish_version`, `varnish_cache_clear` (0 none / 1 default / 2 selective+Expire), `varnish_bantype` (0 normal / 1 ban-lurker), `varnish_cmdlength_limit` (7500)
- **Services:** `cache.backend.varnish` (`VarnishBackendFactory`) + `cache.varnish` bin
- **Key API (procedural, in `varnish.module`):** `varnish_purge()`, `varnish_purge_paths()`, `varnish_purge_all_pages()`, `varnish_get_status()`, `_varnish_terminal_run()`
- **Auth:** SHA-256 challenge/response to the Varnish CLI (status 107) using the control key

**Security:** Only route is the admin settings form, gated by `administer site configuration`. No anonymous or request-driven purge/ban endpoints — bans are triggered internally, not by inbound HTTP, so no unverified-callback exposure. Notes: the `varnish_control_key` secret is stored in plaintext config and entered via a plain textfield (no Key module); `varnish_purge()` interpolates host/pattern into CLI ban strings (operator whitelisted; host/paths are server-side, not user input — low injection risk). Control channel is a plaintext socket meant for a trusted/local network.

See [configure/settings.md](configure/settings.md)
