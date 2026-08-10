<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Data Pipelines SFTP adds SFTP as a source to data pipelines.

---

Data Pipelines SFTP **adds SFTP as a source for the Data Pipelines module** — pulling data files from an
SFTP server into a data pipeline for processing/import. It depends on the Data Pipelines and Key modules, in the
Data Pipelines package.

Use it to ingest data over SFTP in a pipeline. It is an integration/import feature and it handles secrets
**correctly**: the SFTP **credentials are stored via the Key module** (a `user_password` Key entity — the widget
references a Key, not plain config), and the connection uses those Key values (`keyRepository->getKey(...)->
getKeyValue()`), so the password isn't in exported config. Data-handling: it connects to a **remote SFTP server**
(encrypted in transit) and imports **remote files** (treat as untrusted content in the pipeline; use a
least-privilege SFTP account). It has no access-control role. Configure the SFTP source with a Key.

---

- Add SFTP as a data-pipeline source.
- Pull data files over SFTP.
- Feed a data pipeline.
- Depend on Data Pipelines and Key.
- Serve integration/import.
- Ingest remote data.
- Store SFTP credentials via the Key module (correct).
- Reference a user_password Key, not plain config.
- Connect over SSH/SFTP (encrypted).
- Treat imported remote files as untrusted.
- Use a least-privilege SFTP account.
- Configure the SFTP source with a Key.
- Handle SFTP ingestion.
- Import over SFTP.
- Configure the source.
- Pull data.
- Handle the integration.
- Connect via SFTP.
- Secure the credentials (Key).
- Provide SFTP data ingestion.
