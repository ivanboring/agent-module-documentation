<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Upload Size Per Role (upload_size_per_role) — agent index

Sets **max file-upload size per role**. Version **1.0.2**.

**Abuse control:** keep limits **low for untrusted roles** (large uploads consume storage/processing
— an abuse vector); raise only for trusted roles. Governs **size, not type** — pair with
extension/type restrictions.