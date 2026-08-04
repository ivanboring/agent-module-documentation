Bricks Revisions adds a `bricks_revisioned` field type built on Entity Reference Revisions, so a Bricks tree keeps revisions of its referenced entities in step with the host entity's revisions.

---

The submodule defines a `bricks_revisioned` field type (`BricksTreeRevisionedItem`, extending `EntityReferenceRevisionsItem` and mixing in `BricksFieldTypeTrait`, so it carries the same `depth` + serialized `options` as core Bricks) and a nested formatter `bricks_revisions_nested` (`BricksRevisionsNestedFormatter` extending the ERR entity formatter). Because it uses entity_reference_revisions, each referenced brick is tracked by revision, letting the whole tree participate in the host entity's revision history (create/revert). The core module's `BricksServiceProvider` also registers a Replicate event subscriber for `bricks_revisioned` when the Replicate module is present, so cloning duplicates the referenced revisions correctly. The default widget for this field type is `bricks_tree_autocomplete`; the inline/paragraphs/dynamic widgets also list `bricks_revisioned`. Depends on `bricks` and `entity_reference_revisions`. Provides config schema; no config UI, permissions, or Drush.

---

- Keep revisions of referenced bricks aligned with the host node's revisions.
- Revert a page to a previous state including its nested bricks.
- Use Bricks with a content workflow that relies on revisions/moderation.
- Track per-revision changes to a bricks tree (via entity_reference_revisions).
- Clone revisioned bricky content correctly when Replicate is installed.
- Render revisioned bricks with the `bricks_revisions_nested` formatter.
- Build a page builder where component edits are versioned with the page.
- Combine revisioned bricks with the inline/paragraphs/dynamic Bricks widgets.
- Support content staging/preview flows that depend on revisions.
- Migrate a Paragraphs (ERR-based) setup to revisioned Bricks.
- Keep referenced bricks in sync with a moderated node's revisions.
- Diff or audit a page's bricks across revisions.
- Ensure reverting a node also reverts its nested bricks.
- Use revisioned bricks with the inline, paragraphs, or dynamic widgets.
- Version component edits alongside the host entity for accountability.
- Preserve depth and per-item options per revision.
- Underpin a preview/publish workflow for a Bricks-built page.
- Adopt ERR-backed Bricks when content history is a requirement.
