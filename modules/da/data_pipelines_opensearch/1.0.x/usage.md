<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Data Pipelines - OpenSearch provides an OpenSearch destination for Data Pipelines.

---

Data Pipelines - OpenSearch **adds an OpenSearch destination** — letting the Data Pipelines module push
processed data into an OpenSearch index as a pipeline destination. It depends on the Data Pipelines module.

Use it to send pipeline data to OpenSearch. It is a data-integration feature. Security/data handling: it **sends
data to an OpenSearch cluster** (egress — confirm acceptable for the data) and authenticates with **OpenSearch
credentials** (store as secrets — env/Key — over HTTPS). It has no access-control role. Configure the OpenSearch
destination.

---

- Add an OpenSearch pipeline destination.
- Push processed data to OpenSearch.
- Extend Data Pipelines.
- Depend on the Data Pipelines module.
- Serve data integration.
- Index pipeline data.
- Send data to an OpenSearch cluster (egress).
- Store OpenSearch credentials as secrets (env/Key, HTTPS).
- Have no access-control role.
- Configure the OpenSearch destination.
- Handle the destination.
- Push data.
- Configure the destination.
- Index data.
- Handle the pipeline.
- Send to OpenSearch.
- Configure Data Pipelines.
- Handle the integration.
- Store data.
- Provide an OpenSearch destination.
