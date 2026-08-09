<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Data Pipelines provides the ability to manage datasets.

---

Data Pipelines provides **dataset management with pipelines** — configurable source → transform →
destination flows (ETL) that ingest data (e.g. files), validate/transform it (including JSON-path based
validation), and write it to destinations, so structured data can be processed into Drupal or elsewhere. It
requires PHP 8.0, depends on Link, File, Entity and Options, provides its own permissions, in the Data
Pipelines package.

Use it to build data ingest/transform pipelines. It is a data-processing/integration feature run by
privileged users; it processes input data (uploaded files/sources — treat inputs as untrusted and validate),
and its operations run with site privileges, so gate its permissions to trusted operators. It has no
access-control role beyond its permissions. Configure the datasets and pipelines.

---

- Manage datasets with pipelines.
- Run source/transform/destination ETL.
- Ingest and transform data.
- Validate data (incl. JSON-path).
- Require PHP 8.0.
- Depend on Link/File/Entity/Options.
- Treat input data as untrusted.
- Run operations with site privileges.
- Gate permissions to trusted operators.
- Provide its own permissions.
- Configure datasets and pipelines.
- Handle data pipelines.
- Process datasets.
- Configure the pipeline.
- Transform data.
- Ingest data.
- Handle ETL.
- Build pipelines.
- Configure sources.
- Provide dataset management.
