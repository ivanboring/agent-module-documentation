<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Elasticsearch AWS Connector signs Elasticsearch requests with AWS Signature Version 4, so a Drupal site can talk to Amazon's managed Elasticsearch or OpenSearch service.

---

A self-hosted Elasticsearch is reached with a URL and optionally basic auth, and every Drupal integration assumes that. Amazon's managed service is different: access is controlled by **IAM**, and requests must be signed with SigV4 — the same signing scheme as the rest of the AWS API — so an unsigned request is rejected regardless of network position. That single difference is why a site cannot simply point `elasticsearch_connector` at an AWS domain, and it is what this module supplies. Version **8.x-7.2** on `^8.8` through `^11`, requiring `elasticsearch_connector`. Three things worth knowing. **IAM is a better security model than the alternative, and the alternative is what people fall back to**: a managed domain can be opened to an IP range with no signing at all, which is simpler and means anyone who reaches the endpoint reads and writes the whole index — so the signing is worth the setup rather than being an obstacle to route around. **The credentials should be an instance role rather than keys**, since a site running on EC2, ECS or EKS can assume a role and never hold a long-lived secret, and where keys are unavoidable they belong in environment variables with an IAM policy scoped to the specific domain and actions. And **a search index usually contains everything the site can index**, including unpublished content if the indexer was configured carelessly, so the access policy on the domain is protecting a copy of the site's content rather than a cache — and the version numbering here (`8.x-7.2`, tracking Elasticsearch 7) is worth checking against what the AWS domain actually runs, since OpenSearch forked from Elasticsearch at 7.10 and the APIs have diverged since.

---

- Connect Drupal to AWS OpenSearch.
- Sign Elasticsearch requests with SigV4.
- Use IAM to control search access.
- Avoid opening a search domain by IP.
- Connect to Amazon Elasticsearch Service.
- Use an instance role for search access.
- Support a cloud-hosted search backend.
- Authenticate search requests to AWS.
- Support a managed search deployment.
- Connect a Drupal site to OpenSearch.
- Avoid running Elasticsearch yourself.
- Support an AWS-hosted architecture.
- Secure a search backend with IAM.
- Connect Search API to AWS.
- Use scoped IAM policies for search.
- Support a multi-account AWS setup.
- Sign requests from a container.
- Integrate with a managed search cluster.
