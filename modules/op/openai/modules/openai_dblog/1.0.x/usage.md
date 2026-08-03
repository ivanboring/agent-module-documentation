OpenAI Error Log Analyzer augments Drupal's database log (dblog) so that, for a captured log event, OpenAI proposes a possible explanation of the error, using the core `openai.api` service.

---

The submodule extends the dblog experience: a settings form
(`openai_dblog.settings`, `/admin/config/openai/openai-dblog/settings`, permission
`administer site configuration`) configures which model/behavior to use (config
`openai_dblog.settings`, schema `openai_dblog.schema.yml`), a `RouteSubscriber` augments the
dblog event route, and `OpenAIDbLogController::eventDetails()` presents an AI-generated
explanation for a given log event id (via `openai.api`). It requires the core `dblog` module.
Because it reads log messages (which may contain sensitive data) and sends them to OpenAI, it
is an admin/operations tool guarded by `administer site configuration`.

---

- Get a plain-language explanation of a Drupal log/error message.
- Speed up debugging by summarizing watchdog entries with AI.
- Help less-experienced admins interpret PHP/Drupal errors.
- Suggest likely causes for a recurring error.
- Triage the dblog by surfacing probable explanations.
- Turn a cryptic stack trace into a readable summary.
- Configure which OpenAI model analyzes logs.
- Reduce time-to-diagnosis for site incidents.
- Provide onboarding help for new site maintainers reading logs.
- Draft an incident note from a log event.
- Explain deprecation or type errors captured in logs.
- Keep log analysis behind `administer site configuration`.
- Analyze a specific dblog event on demand.
- Complement manual log review with AI hints.
- Prototype AI-assisted ops workflows.
- Reuse the shared `openai.api` service and API key.
