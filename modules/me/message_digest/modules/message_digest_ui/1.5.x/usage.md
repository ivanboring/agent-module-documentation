Submodule of Message Digest that lets users choose their own notification frequency, by wiring digest intervals into Flag/Message Subscribe Email so a per-flagging (or per-user) "how often" preference selects the right digest notifier.

---

Message Digest UI ships a `message_digest` field on the Message Subscribe Email flaggings (email_node/email_term/
email_user) and on the user entity (see `config/optional`), plus derived **Action** plugins
(`message_digest_interval`, one per flag + interval combination) so a user can set their digest interval per
subscribed item. It implements `hook_message_subscribe_get_subscribers_alter()`: for the entities being
notified it queries the user's relevant flaggings, reads each `message_digest` value, and — if the user picked a
digest interval (non-zero) — replaces the delivery candidate's notifiers with that digest notifier; a `0`
("Send immediately") value leaves immediate delivery in place. The action's `access()` defers to the flag's
`actionAccess('flag', …)`, and `execute()` flags the entity if needed then saves the chosen interval onto the
flagging. Requires `message_digest`, `message_subscribe_email`, and core `options`. The interval option list is
derived from the Digest notifier plugins plus a "Send immediately" entry.

---

- Let each user choose daily / weekly / immediate for their email notifications.
- Store a per-subscription (per-flagging) digest frequency preference.
- Store a per-user default digest frequency via the user `message_digest` field.
- Switch a user's notifications to a digest notifier automatically at send time.
- Keep immediate delivery for subscriptions the user marks "Send immediately".
- Offer per-entity actions to change a subscription's digest interval.
- Integrate digest preferences with Flag + Message Subscribe Email.
- Present available intervals (from the digest interval config entities) as select options.
- Respect flag access when exposing interval-change actions.
- Create the flagging on demand when a user sets an interval on an unflagged entity.
- Provide the human-facing side of Message Digest (the base module is API-only).
- Let node/term/user subscriptions each carry their own digest frequency.
- Override all of a delivery candidate's notifiers with the chosen digest notifier.
- Combine with message_subscribe so subscribers control their own digest cadence.
- Ship optional config (fields/actions) that can be adapted to custom flags.
