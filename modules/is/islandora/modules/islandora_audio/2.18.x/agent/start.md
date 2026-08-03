# Islandora Audio — agent index

Adds an audio derivative **Action** and an HTML5 audio **formatter** to
[Islandora Core](../../../../2.18.x/agent/start.md). No config page, no permissions. Depends on `islandora`.

## Action (`src/Plugin/Action/GenerateAudioDerivative.php`)

- `@Action(id = "generate_audio_derivative")`, extends `AbstractGenerateDerivative`.
- Defaults: `queue = islandora-connector-homarus`, `mimetype = audio/mpeg`.
- Inherits `source_term_uri`, `derivative_term_uri`, `destination_media_type`, `args` (FFmpeg args),
  `scheme`, `path` from the core abstract action. Consumed by the **Homarus/FFmpeg** microservice, which PUTs
  the transcoded file back via Islandora's media-source REST routes.

## Field formatter

- `islandora_file_audio` (`src/Plugin/Field/FieldFormatter/IslandoraFileAudioFormatter.php`) — renders a
  file field as an HTML5 `<audio>` player; uses `js/audio.js` and `templates/islandora-file-audio.html.twig`.
  Set it on the audio media's *Manage display*.

Setup: Context Condition matching audio objects → Derivative reaction running `generate_audio_derivative`
(see core [plugins/context.md](../../../../2.18.x/agent/plugins/context.md)).
