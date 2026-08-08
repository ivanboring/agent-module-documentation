<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Big Pipe Paragraphs — agent index

Loads **paragraphs progressively via BigPipe** — page shell first, paragraphs stream in after, for
faster perceived load on paragraph-heavy pages. Depends on `big_pipe`, `dynamic_page_cache`,
`paragraphs`, `preprocess`. Version **1.0.2**. Core `^8||^9||^10||^11`.

Performance/rendering only — paragraph access/cacheability unchanged.
