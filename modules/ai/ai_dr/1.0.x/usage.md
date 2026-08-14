<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
AI Deep Reference adds Drupal tokens that pull the description text of taxonomy terms referenced from a node, so that text can flow into AI prompts and other token-driven contexts.
---
Out of the box, Drupal's token system exposes a term's name but not an easy way to reach the *description* of a term referenced by a node field. This small module registers a `[term:description]` token and a dynamic `[node:term-description:FIELD_NAME]` token that walks an entity-reference field on the node, collects the referenced terms' descriptions, and joins them.

Implemented purely with `hook_token_info` and `hook_tokens` (depends on the Token module), it has no routes, permissions, forms or services. It is intended to feed richer context into AI prompt templates that are assembled from tokens, but it is a generic token provider usable anywhere tokens are resolved.
---
- Add a `[term:description]` token for taxonomy terms.
- Resolve a term's description wherever tokens are supported.
- Add `[node:term-description:field_name]` for referenced terms.
- Pull descriptions from a node's entity-reference field.
- Join multiple referenced term descriptions into one string.
- Feed taxonomy context into an AI prompt template.
- Enrich metatag or mail templates with term descriptions.
- Use term descriptions in Views token replacements.
- Provide category context to an LLM summarizer.
- Build prompts that include glossary-style term text.
- Avoid custom code to expose term descriptions as tokens.
- Combine with other token modules for prompt assembly.
- Reference vocabulary descriptions from node display.
- Surface controlled-vocabulary text to automated workflows.
- Keep prompt context in sync with taxonomy edits.