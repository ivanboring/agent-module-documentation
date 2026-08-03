# Islandora Video — agent index

Adds a video derivative **Action** and an HTML5 video **formatter** to
[Islandora Core](../../../../2.18.x/agent/start.md). No config page, no permissions. Depends on `islandora`.

## Action (`src/Plugin/Action/GenerateVideoDerivative.php`)

- `@Action(id = "generate_video_derivative")`, extends `AbstractGenerateDerivative`.
- Defaults: `queue = islandora-connector-homarus`, `mimetype = video/mp4`.
- Inherits `source_term_uri`, `derivative_term_uri`, `destination_media_type`, `args` (FFmpeg args),
  `scheme`, `path` from the core abstract action. Consumed by the **Homarus/FFmpeg** microservice, which PUTs
  the transcoded file back via Islandora's media-source REST routes.

## Field formatter

- `islandora_file_video` (`src/Plugin/Field/FieldFormatter/IslandoraFileVideoFormatter.php`) — renders a
  file field as an HTML5 `<video>` player; uses `templates/islandora-file-video.html.twig`. Set it on the
  video media's *Manage display*.

Setup: Context Condition matching video objects → Derivative reaction running `generate_video_derivative`
(see core [plugins/context.md](../../../../2.18.x/agent/plugins/context.md)).
