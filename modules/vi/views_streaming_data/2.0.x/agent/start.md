<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Views Streaming Data (views_streaming_data) — agent index

**Streaming** CSV and JSON Views formats — rows written to the output as produced, rather than the
whole response built in memory. Depends on `csv_serialization`, core `rest` and `views`.
Version **2.0.0**. Core requirement `^10.0 || ^11.0`.

**The failure it fixes:** a non-streaming export builds every row into a string, exhausts PHP's
memory limit or execution time, and returns a **white screen after two minutes with nothing partial
to show for it**. That threshold arrives sooner than people expect.

**Three things follow from streaming:**
1. **The response starts before the query finishes.** An error partway through arrives **inside a
   file already downloading** — it cannot become a clean error page, and the user gets a truncated
   file that looks complete.
2. **Buffering defeats it.** A reverse proxy, output filter or gzip layer that waits for the full
   body puts the memory back — on the proxy instead of PHP. Check the whole chain.
3. **Access is still the view's.** Streaming changes delivery, not authorisation. An export view
   needs the same filters and permission checks as any other — **a fast export of data the user
   should not have is worse, not better**.
