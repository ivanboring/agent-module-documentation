<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Igbinary registers serialization services backed by the igbinary PHP extension, a binary replacement for PHP's `serialize()` that produces smaller output and decodes faster.

---

Drupal serialises constantly — every cache entry, every queue item, every key-value record goes through `serialize()`, and on a busy site that is a measurable share of both CPU time and cache storage. Igbinary encodes the same structures in a compact binary form: typically a large reduction in size and a meaningful gain in unserialise speed, which matters most where the cache backend is over a network (Redis, Memcached) and every byte is transfer. This module supplies the Drupal-side services — `serialization.igbinary`, `serialization.igbinary_gz` and, for comparison, `serialization.phpserialize_gz` — so a cache or queue backend can be pointed at them. Version **2.0.0-alpha3**, notable for declaring `^10.3 || ^11.0 || ^12`, which reaches ahead to a core major that does not exist yet. Two conditions before it can help. It needs the **igbinary PECL extension** compiled into PHP; without it the services are inert and nothing works, and that is an infrastructure decision rather than a Composer one. And **existing serialised data is not readable by the new format** — switching a live cache backend means the old entries are garbage, so the change belongs with a cache flush, and anywhere serialised data is *persisted* rather than cached (a queue mid-drain, a long-lived key-value store) it needs more thought than a flush.

---

- Reduce cache entry size.
- Speed up cache unserialisation.
- Cut Redis memory usage.
- Reduce network transfer to Memcached.
- Improve performance on a busy site.
- Compress serialised cache data.
- Use a binary serialisation format.
- Reduce database cache table size.
- Speed up queue processing.
- Lower cache backend costs.
- Improve page generation time.
- Compare serialisation strategies.
- Tune a high-traffic site.
- Reduce memory pressure.
- Serialise large render arrays efficiently.
- Improve key-value store performance.
- Support a performance audit.
- Reduce cache warm-up cost.
