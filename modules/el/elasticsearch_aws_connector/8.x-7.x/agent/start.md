<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Elasticsearch AWS Connector (elasticsearch_aws_connector) — agent index

Signs Elasticsearch requests with **AWS Signature Version 4**, so Drupal can talk to Amazon's
managed **Elasticsearch / OpenSearch**. Requires `elasticsearch_connector`. Version **8.x-7.2**.
Core requirement `^8.8 || ^9 || ^10 || ^11`.

**Why it is needed at all:** a self-hosted cluster is reached with a URL and maybe basic auth, and
every Drupal integration assumes that. **AWS controls access with IAM**, and requests must be
**SigV4-signed** — an unsigned request is rejected regardless of network position.

**Three things worth knowing:**
1. **IAM is the better security model, and the fallback is what people reach for.** A managed domain
   can be opened to an **IP range with no signing at all** — simpler, and it means **anyone who
   reaches the endpoint reads and writes the whole index**. The signing is worth the setup.
2. **Prefer an instance role over keys.** On EC2/ECS/EKS the site can assume a role and hold **no
   long-lived secret**. Where keys are unavoidable: environment variables, with an IAM policy scoped
   to the specific **domain and actions**.
3. **A search index usually contains everything the site can index** — including unpublished content
   if the indexer was configured carelessly. The domain's access policy protects **a copy of the
   site's content**, not a cache.

**Check the version line against the cluster:** `8.x-7.2` tracks **Elasticsearch 7**, and
**OpenSearch forked at 7.10** — the APIs have diverged since.
