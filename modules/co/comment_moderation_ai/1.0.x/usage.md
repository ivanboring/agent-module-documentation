<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Comment Moderation AI validates submitted comments against custom policies with an LLM and flags bad content.

---

Comment Moderation AI provides AI-powered comment moderation — using custom policies to validate comments and flag inappropriate content, so an LLM checks each submitted comment against site-defined rules (spam, abuse, off-topic) and flags/holds those that violate them, reducing manual moderation.

The AI provider key is stored via a Key entity (`key` dependency, env-backed) — never hard-coded. Because moderation runs an LLM call per submitted comment, keep comment-posting permissions and flood limits tight to control cost. Depends on core `comment`, `user`, `system`, `field` and `key`; supports Drupal 10 and 11.

---

- Moderate comments with AI.
- Validate against custom policies.
- Flag inappropriate content.
- Detect spam/abuse/off-topic.
- Hold or flag violating comments.
- Reduce manual moderation.
- Store the AI key via a Key entity.
- Keep comment perms/flood limits tight.
- Watch per-comment LLM cost.
- Depend on core `comment`/`user`/`system`/`field` and `key`.
- Support Drupal 10 and 11.
- Check each submission.
- Flag bad comments
- Apply policies
- Support moderation.
- Validate comments.
- Use an LLM.
- Keep keys secure
