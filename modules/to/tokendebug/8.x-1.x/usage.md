<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Token Debug shows what tokens actually resolve to in a given context, instead of leaving a developer to guess why a placeholder came out empty.

---

Tokens fail silently, which is what makes them hard to work with. A meta description built from `[node:field_summary]` that comes out empty offers no explanation — the field may be empty, the token may not exist for that entity type, the context may not have been passed, the module providing it may not be enabled, or the name may simply be misspelled. Core's token browser lists what is *available*, which is a different question from what a token *evaluates to right now for this entity*. This module answers the second, version **8.x-1.1** on `^8` through `^11`, no dependencies beyond the token system. Because it is a debugging tool, the deployment position is the important part and it is the same as for `devel`: **useful in development, not for production**. Token values include content that may be unpublished and fields that may be access-controlled, and a debugging interface that prints resolved values is a disclosure surface if it is reachable by anyone it should not be. Confirm which permission gates it, keep it out of the production module list rather than merely unlinked from a menu, and treat it as one of the modules to check for when auditing an inherited site — a debugging tool left enabled in production is a recurring finding in the campaign's reviews.

---

- See what a token resolves to.
- Debug an empty meta description.
- Diagnose a failing path pattern.
- Check a token exists for an entity type.
- Debug an email template's placeholders.
- Find a misspelled token name.
- Confirm a context is being passed.
- Inspect token values for a node.
- Debug a scheduled message.
- Check a field token's output.
- Diagnose a metatag problem.
- Verify a token before using it.
- Debug a token in a view.
- Inspect available token values live.
- Troubleshoot a pathauto pattern.
- Confirm a custom token works.
- Debug a token in a webform handler.
- Investigate token behaviour per entity.
