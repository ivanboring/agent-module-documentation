<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Acquia CMS — this module provides powerful search for the site, built on Search API — it expects a configured search index (Solr in the full distribution), which is why it will not enable without that index present.

---

Acquia CMS is Acquia's Drupal distribution, assembled from small single-purpose modules. This is one of its infrastructural components rather than a content type: powerful search for the site, built on Search API — it expects a configured search index (Solr in the full distribution), which is why it will not enable without that index present.

Like the rest of the family it is **distribution configuration and glue**, designed to work with `acquia_cms_common` and the other acquia_cms modules present. It is exactly right on an Acquia CMS site and a strong set of assumptions on an unrelated one. Where it depends on an external platform — search infrastructure, or the proprietary Site Studio builder — that dependency has to be satisfied for the module to function, which is why some of the family will not enable on a minimal site without the rest of the distribution's configuration in place.

Treat the Acquia CMS modules as a set adopted together, not as standalone features to cherry-pick.

---
- Add search to an Acquia CMS site.
- Provide a search results page.
- Build on Search API.
- Index Acquia CMS content types.
- Require a configured search index.
- Use Solr in the full distribution.
- Get a pre-built search configuration.
- Search articles, events and pages.
- Provide faceted search.
- Adopt Acquia's search setup.
- Enable only with the search index present.
- Configure a Search API server first.
- Standardise search across the family.
- Reuse Acquia CMS search config.
- Provide site-wide content search.
- Extend the search configuration.
- Match the Acquia CMS search model.
- Depend on acquia_cms_common.