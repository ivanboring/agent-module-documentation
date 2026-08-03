# Islandora Image — agent index

Adds image derivative-generation **Actions** to [Islandora Core](../../../../2.18.x/agent/start.md). No config
page, no permissions. Depends on `islandora`. Wire the Actions into a Context Derivative reaction (see the
core [plugins/context.md](../../../../2.18.x/agent/plugins/context.md)).

## Actions (`src/Plugin/Action/`)

| id | Class / base | Default `queue` | Default `mimetype` | Output |
|---|---|---|---|---|
| `generate_image_derivative` | extends `AbstractGenerateDerivative` | `islandora-connector-houdini` | `image/jpeg` | new media on the node |
| `generate_image_derivative_file` | extends `AbstractGenerateDerivativeMediaFile` | `islandora-connector-houdini` | `image/jpeg` (form value) | file attached to existing media |

- Inherits config from the core abstract action: `source_term_uri`, `derivative_term_uri`,
  `destination_media_type`, `mimetype`, `args`, `scheme`, `path`. `args` = ImageMagick `convert` arguments
  (e.g. `-resize 50%`).
- The emitted event is consumed by the **Houdini** microservice, which converts the source and PUTs the
  result back to `islandora.media_source_put_to_node` / `attach_file_to_media`.
- Also provides `islandora_image_help()` (hook_help) only; the `islandora_image` **field formatter** lives
  in Islandora Core, not here.

Setup: Context Condition matching image objects → Derivative reaction running `generate_image_derivative`.
