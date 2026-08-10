<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Data Pipelines SFTP — agent index

**Adds SFTP as a source for the Data Pipelines module**. Depends on `data_pipelines`, `key`. Version **1.2.0**.
Core `^10.1||^11`.

Integration/import — SFTP **credentials stored via the Key module** (correct; user_password Key, not config);
connects over SSH (encrypted); imports **untrusted remote files** (least-privilege account). No access role.
