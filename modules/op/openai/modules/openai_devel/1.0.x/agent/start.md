# OpenAI Devel Generate (openai_devel) — agent index

GPT-written demo content for Devel Generate, over the parent `openai.api` service. Dev-only;
requires `devel_generate`. Parent: [../../../../1.0.x/agent/start.md](../../../../1.0.x/agent/start.md).

Key facts:
- DevelGenerate plugin `\Drupal\openai_devel\Plugin\DevelGenerate\ContentGPTDevelGenerate` —
  generates node bodies via GPT.
- Drush command **`devel-generate:content-gpt`** (`OpenAIDevelCommands::content($num = 15, …)`),
  with `validate()`/`generate()` wrapping the DevelGenerate plugin manager.
- No config/permissions/schema of its own. Requires the parent's API key + Devel Generate.
- Tagged `developer` — intended for local/dev, not production.
