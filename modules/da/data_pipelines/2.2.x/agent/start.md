<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Data Pipelines — agent index

Manage **datasets with source/transform/destination pipelines (ETL)** — ingest, validate (incl. JSON-path),
transform, write to destinations. Requires PHP 8.0. Depends on `link`, `file`, `entity`, `options`. Provides
permissions. Version **2.2.0**. Core `^10.3||^11`.

Data-processing/integration — processes input data (treat sources as untrusted; validate); runs with site
privileges (gate permissions to trusted operators). No access role beyond permissions.
