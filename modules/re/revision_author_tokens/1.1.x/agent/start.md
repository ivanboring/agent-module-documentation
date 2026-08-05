<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Revision Author Tokens (revision_author_tokens) — agent index

Tokens for a node **revision's** author. Depends on core `token`. Core requirement `^10 || ^11`.
No routes, permissions or configuration.

Key facts:
- Whole module: `revision_author_tokens.tokens.inc`, `.module`, `.info.yml`, `README.md`,
  `LICENSE.txt`.
- **Fills a real core gap:** `[node:author]` is the node's *owner* — who created it — not who made
  the current revision. For any "who changed this" message the revision author is the useful
  identity, and core has no token for it.
- Works anywhere tokens are consumed: ECA/Rules actions, message templates, Metatag, Pathauto,
  mail bodies.
- **Privacy caution:** these tokens name a person. A pattern that puts a revision author into a
  public URL alias, a meta description or a rendered field discloses who edited a page to every
  reader. Keep them to internal notifications and admin displays unless disclosure is intended.
