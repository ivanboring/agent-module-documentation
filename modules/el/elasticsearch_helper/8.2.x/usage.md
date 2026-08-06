<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Elasticsearch Helper provides the connection, index management and document-building layer for talking to Elasticsearch directly, without Search API.

---

There are two ways to use Elasticsearch from Drupal. Search API treats it as one backend among several, which is right when the requirement is site search and you may want to swap backends. Elasticsearch Helper takes the other route: Elasticsearch is the point, and the module gives you index definitions, document builders and a client rather than an abstraction over search generally.

That suits requirements Search API models awkwardly — a document shape that is not a Drupal entity, aggregations driving a dashboard, an index consumed by something other than the site, or a mapping that needs specific Elasticsearch features.

The trade is the ecosystem: no facets module, no processors, no swapping backends later without rewriting. Choose it when Elasticsearch's own capabilities are the requirement, not when "search" is.

**Three operational points belong in any direct Elasticsearch integration.** The credential has index-write access, so keep it out of exported configuration. The cluster is a network dependency — decide what happens when it is unreachable, because an unhandled failure during indexing is a failed content save. And **indexed documents leave Drupal's access model behind**: whatever access applied to the source is not enforced by Elasticsearch, so anything reading the index directly sees everything in it. That is fine for a public site search and is the thing to think hardest about when the index contains anything restricted.

`inqube`, in the same wave, sits on top of this kind of arrangement to expose queries through Views.

---

- Index Drupal content in Elasticsearch.
- Define an index and its mapping.
- Build documents that are not entities.
- Drive a dashboard from aggregations.
- Use Elasticsearch features Search API hides.
- Serve an index to another application.
- Choose between this and Search API.
- Weigh losing the Search API ecosystem.
- Keep the Elasticsearch credential out of config.
- Decide behaviour when the cluster is down.
- Avoid a failed content save on indexing error.
- Recognise that indexed documents lose Drupal access.
- Restrict who can query the index directly.
- Reindex after a mapping change.
- Plan an Elasticsearch architecture.
