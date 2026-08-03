# OpenAI Error Log Analyzer (openai_dblog) — agent index

AI explanations for Drupal dblog events, over the parent `openai.api` service. Requires core
`dblog`. Parent: [../../../../1.0.x/agent/start.md](../../../../1.0.x/agent/start.md).

Key facts:
- Settings route `openai_dblog.settings` → `/admin/config/openai/openai-dblog/settings`,
  form `SettingsForm`, permission **`administer site configuration`**. Config
  `openai_dblog.settings` (schema `openai_dblog.schema.yml`, config/install default provided).
- `RouteSubscriber` augments the dblog event route; `OpenAIDbLogController::eventDetails($event_id)`
  renders an AI explanation for a log event via `openai.api`.
- Sends log message text to OpenAI — admin-gated. No plugins of its own. Requires the parent's
  API key.
