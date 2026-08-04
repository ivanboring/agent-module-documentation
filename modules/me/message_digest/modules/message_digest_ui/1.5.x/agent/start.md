# Message Digest UI — agent index

Submodule adding the user-facing side of Message Digest: per-user / per-subscription notification frequency,
wired through Flag + Message Subscribe Email. Depends on `message_digest`, `message_subscribe_email`, core
`options`. Provides Action plugins + optional field config; no permissions of its own.

How it works:
- **Optional config** (`config/optional`): a `message_digest` field on the `flagging` bundles
  `email_node`/`email_term`/`email_user` and on the `user` entity, plus `system.action.*` action configs.
- **Action plugin** `message_digest_interval` (`Plugin/Action/DigestInterval`, deriver
  `DigestIntervalActionDeriver`): derives one action per flag (`email_node`→node, `email_term`→taxonomy_term,
  `email_user`→user) × interval (from the Digest notifier plugins + a "Send immediately" entry). `access()`
  delegates to `flag->actionAccess('flag', $account, $object)`; `execute()` flags the entity if not already
  flagged, then sets `$flagging->message_digest = <interval plugin id>` and saves.
- **Notifier swap** (`message_digest_ui.module`): `hook_message_subscribe_get_subscribers_alter()` — for the
  notified entities, loads each recipient's matching flaggings, reads their `message_digest` value; a non-zero
  value replaces the delivery candidate's notifiers with that digest notifier, `0`/null keeps immediate delivery.
  A `hook_module_implements_alter()` ensures this runs after `message_subscribe_email`.

Parent docs: [../../../../1.5.x/agent/start.md](../../../../1.5.x/agent/start.md)
