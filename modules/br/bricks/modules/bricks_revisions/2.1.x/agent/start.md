# Bricks Revisions — agent index

Adds an Entity-Reference-Revisions-based Bricks field so the tree participates in revision history.
Parent: Bricks ([../../../../2.1.x/agent/start.md](../../../../2.1.x/agent/start.md)). Depends on `bricks`,
`entity_reference_revisions`.

Plugins:
- Field type `bricks_revisioned` (`BricksTreeRevisionedItem` = `EntityReferenceRevisionsItem` +
  `BricksFieldTypeTrait`; default widget `bricks_tree_autocomplete`, default formatter `bricks_nested`).
- Formatter `bricks_revisions_nested` (`BricksRevisionsNestedFormatter` extends the ERR entity
  formatter).

Key facts:
- Same `depth` + serialized `options` model as core Bricks; nesting/render reuse the parent `Bricks`
  helper — see [../../../../2.1.x/agent/api/rendering.md](../../../../2.1.x/agent/api/rendering.md).
- The inline / paragraphs / dynamic widgets also accept `bricks_revisioned`.
- Parent `BricksServiceProvider` wires a Replicate subscriber for `bricks_revisioned` when `replicate`
  is installed.
- Provides config schema; no config UI, permissions, or Drush.
