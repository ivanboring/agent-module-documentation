<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Token Debug (tokendebug) — agent index

Shows what tokens **actually resolve to** in a given context. No dependencies beyond the token
system. Version **8.x-1.1**. Core requirement `^8 || ^9 || ^10 || ^11`.

**Why it is needed:** tokens fail **silently**. An empty `[node:field_summary]` could be an empty
field, a token that does not exist for that entity type, a context not passed, a module not
enabled, or a misspelling — with no signal distinguishing them. Core's token **browser** lists what
is *available*, which is a different question from what a token *evaluates to right now for this
entity*.

**Deployment position is the important part, and it is the `devel` position: development only.**
- Token values include **unpublished content** and **access-controlled fields**. An interface that
  prints resolved values is a **disclosure surface** if reachable by the wrong person.
- Confirm which permission gates it.
- **Keep it out of the production module list**, not merely unlinked from a menu.
- Treat it as one of the modules to check for when auditing an inherited site — a debugging tool
  left enabled in production is a recurring finding in this campaign's reviews.
