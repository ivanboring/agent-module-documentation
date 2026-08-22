# Entity Metrics — manual setup guide

**Entity Metrics** (`entity_metrics`) records **page views and downloads** for
entities on your Drupal site — counting how often each entity is viewed and how
often its files are downloaded, so editors and administrators can see which content
is actually getting attention. Instead of relying solely on an external analytics
product, the counts live in Drupal and are tied to the entities themselves.

To enrich the raw counts with geographic information it can use the **IP2Location**
service, which is why the module depends on the **Key** module: your IP2Location
API key is stored as a Key entity rather than being pasted into plain
configuration. The module also provides its own permissions, so you can control who
is allowed to see the metrics. It runs on Drupal 10 and 11.

Note that at the time of writing Entity Metrics is a **beta** release. Because view
and download counts (and any geolocation derived from them) can be sensitive,
restrict who can view them using the module's permissions.

This guide is written for a **human** clicking through the admin UI. If you want
terse, token‑cheap references for an AI coding agent, read the sibling
[`agent/`](../agent/start.md) docs instead.

## Contents

1. [Installation](installation/index.md) — install the module and its Key
   dependency, enable it, and create the IP2Location key it needs.

## Where it lives in the admin menu

Entity Metrics records views and downloads for entities and surfaces the resulting
metrics to users who hold its permissions. Its IP2Location credential is managed
through the **Key** module at **Configuration → System → Keys**.

## How to use it

1. Install and enable the module (see [Installation](installation/index.md)).
2. Create a Key named **`ip2location`** holding your IP2Location API key — this is
   the required post-install step (details in Installation).
3. Grant the module's view permission only to the roles that should see metrics.
4. As visitors view content and download files, the counts accumulate against each
   entity for those permitted users to review.
