<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Unstructured (unstructured) — agent index

Client for **Unstructured.io** — parses PDFs, Word docs and images into structured elements.
Version **2.0.0-rc2**. Core `^10.2 || ^11`. Depends on `key`.
Configure at `/admin/config/unstructured/settings`.

- Service: `unstructured.api` (`UnstructuredApi`) — usable directly.
- Formatters: markdown, HTML, plain text.
- **AI Automator types:** `FileToText`, `FileToString`, `FileToTable`, `FileToImage`.

**Two backends.** Hosted API (needs a key) or a self-hosted `unstructured-api` container. The
README gives a DDEV recipe: add `.ddev/docker-compose.unstructured.yaml`, restart, point the host
name at it and leave the API key blank — keeps documents out of a third party in development.

**Credentials done right, cite as the good example:** the form uses `'#type' => 'key_select'`, so
config stores only a **Key entity id**, not the secret. With the Key env provider the API key never
reaches config, exported config or git.