<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# File encrypt (file_encrypt) — agent index

Encrypts stored files via an **`encrypt://` stream wrapper**, decrypting on delivery. Requires the
**`encrypt`** module for key management (so the key can come from a **Key** entity backed by an
environment variable or KMS, not the database). Depends on core `file`.
Version **2.0.0-alpha1** — an **alpha**, for a component whose failure mode is unreadable files.
Core requirement `^10.3 || ^11`.

**What it adds over private files:** the private filesystem controls **who may download**; it does
nothing about what the bytes look like on disk. Backups, snapshots, shared hosts, misconfigured
syncs and stolen disks all read them directly.

**Implementation is careful where it matters** — the download controllers **extend core's own**, so:
- access is delegated to the **`hook_file_download()`** chain, exactly as private files
  (which is why the routes can be `_access: 'TRUE'`);
- the image-style controller keeps core's **SA-CORE-2023-005** path-traversal guard and its
  **`hash_equals()`** derivative-token check rather than reimplementing them loosely.

**Three operational realities:**
1. **Key loss is data loss** — no recovery path. Design key backup and rotation **before** the first
   upload.
2. **Image derivatives** are generated from decrypted content — confirm whether the derivative is
   itself encrypted or a plaintext copy sitting beside it.
3. **Encryption is not access control.** It protects bytes at rest; who may ask for them remains
   `hook_file_download()`'s job.
