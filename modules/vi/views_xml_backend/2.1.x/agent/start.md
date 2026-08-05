<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Views XML Backend (views_xml_backend) — agent index

Views **query backend** reading from an XML document. Depends on core `views`.
Core requirement `^10 || ^11`.

Key facts — three things decide whether it works in practice:
- **Source location.** A remote URL fetched at render time makes every page load depend on that
  host's latency and availability. Decide caching and the failure path before launch.
- **XML parsing safety.** External XML must never be parsed with **entity expansion** enabled —
  that is the **XXE** class of vulnerability (file disclosure, SSRF). Confirm how the parser is
  configured if the source is not fully trusted. Same family of concern as
  `views_csv_source` (wave 59), where the `internal:` scheme turned out to read arbitrary files.
- **XPath is the query language**, so filtering is bounded by what XPath expresses against that
  document — not by what Views expresses against SQL.
- Same architectural trade as `views_csv_source`: query external data where it lives rather than
  importing it. Right for upstream-owned reference data; wrong for anything the site should own.
