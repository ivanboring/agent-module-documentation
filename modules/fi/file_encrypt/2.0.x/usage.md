<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
File encrypt stores uploaded files encrypted on disk, through an `encrypt://` stream wrapper, decrypting them as they are served to users who are allowed to have them.

---

Drupal's private filesystem controls **who may download** a file and does nothing about what the bytes look like on disk: anyone with filesystem access — a backup, a snapshot, a shared host, a misconfigured sync, a stolen disk — reads them directly. For most content that is fine and for some it is not: medical records, identity documents, signed contracts, anything an organisation has promised to encrypt at rest. This module closes that, building on the **`encrypt`** module for key management, so the key comes from a Key entity and can live in an environment variable or a KMS rather than in the database. Version **2.0.0-alpha1** — an **alpha**, for a component whose failure mode is unreadable files — on core `^10.3 || ^11`. The implementation is careful in the way that matters: the download controllers extend core's own, so access is delegated to the **`hook_file_download()`** chain exactly as private files are, and the image-style controller retains core's SA-CORE-2023-005 path-traversal guard and its `hash_equals()` derivative-token check rather than reimplementing them loosely. Three operational realities to plan for. **Key loss is data loss** — there is no recovery path, so key backup and rotation need designing before the first upload. **Image derivatives** must be generated from decrypted content and then stored somewhere, so confirm whether the derivative is itself encrypted or is a plaintext copy sitting beside it. And **encryption is not access control**: it protects the bytes at rest and does nothing about who may ask for them, which remains `hook_file_download()`'s job.

---

- Encrypt uploaded files at rest.
- Protect documents on shared hosting.
- Meet an encryption-at-rest obligation.
- Protect files in backups.
- Store identity documents securely.
- Encrypt signed contracts.
- Use a Key entity for file encryption.
- Protect medical or sensitive records.
- Serve decrypted files to authorised users.
- Meet a compliance requirement.
- Protect files on a stolen disk.
- Encrypt files without changing fields.
- Support a data-protection assessment.
- Protect uploads on a multi-tenant host.
- Encrypt a private file field.
- Reduce exposure from a snapshot.
- Support a security audit finding.
- Encrypt files served through image styles.
