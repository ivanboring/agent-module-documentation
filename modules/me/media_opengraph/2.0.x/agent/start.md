<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Media OpenGraph — agent index

Provides a **media type with metadata fetched from a link's OpenGraph tags** (title/description/image — link
preview/card). Depends on core `media`. Version **2.0.0**. Core `^11`.

**Security:** fetches a **remote URL server-side** — restrict who can create these media (arbitrary-URL fetch
= potential **SSRF**); treat fetched metadata as untrusted (escape on display). No access role.
