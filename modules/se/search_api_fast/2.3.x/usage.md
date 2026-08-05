<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Search API Fast indexes content with several workers running simultaneously, so a full reindex that takes hours sequentially can be parallelised.

---

Search API indexes in batches on cron or through Drush, one item after another, and on a site with hundreds of thousands of items a full reindex becomes an overnight job — which is a real constraint when reindexing is required after a schema change, a processor change, or a migration. The bottleneck is usually not the search backend but Drupal bootstrapping and rendering each item, which parallelises well. This module supplies the machinery: `SearchApiFastQueue` manages work distribution across workers, `src/Constants` and a settings form at `/admin/config/search/search-api-fast` control the configuration, and Drush integration provides the entry point — which is the one that matters, since parallel indexing belongs in a terminal or a job runner rather than a browser request. It depends on `search_api ^1.0`, with core `^9.5 || ^10 || ^11`. The operational judgement is about resources: workers compete for database connections, PHP processes and search-backend throughput, so the right worker count is the one the infrastructure supports, and setting it too high converts a slow reindex into an outage. Test on a copy before running it against production.

---

- Reindex a large site faster.
- Parallelise indexing across workers.
- Shorten a reindex after a schema change.
- Reindex following a migration.
- Reduce an overnight indexing window.
- Run indexing from Drush with several workers.
- Speed up initial index population.
- Index a large media library.
- Reindex after adding a processor.
- Use available CPU during a maintenance window.
- Reduce time to search readiness after a deploy.
- Index a multilingual site's content faster.
- Fit a reindex into a release window.
- Tune worker count to the infrastructure.
- Reindex a Solr collection quickly.
- Reduce cron pressure from indexing.
- Support a large content migration.
- Recover an index after a backend rebuild.
