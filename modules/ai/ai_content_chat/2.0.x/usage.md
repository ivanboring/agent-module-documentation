<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
AI Content Chat provides a permission-gated chatbot that answers from indexed site content.

---

AI Content Chat provides an AI-powered chatbot that answers questions based on your website content — it indexes site content and answers user questions (RAG-style) via the AI module, with a block for placing the chat widget and an API endpoint for asking questions.

The ask endpoint `/api/ai-content-chat/ask` is gated by `use ai content chat` (not anonymous), and answers run through the configured AI provider (cost); administration/reindex are gated by `administer ai content chat`. Depends on core `block` and `ai`; supports Drupal 10 and 11.

---

- Answer questions from site content.
- Provide an AI chatbot.
- Index content for RAG.
- Place a chat widget block.
- Expose an ask API endpoint.
- Gate the ask endpoint with `use ai content chat`.
- Not be anonymous.
- Gate admin/reindex with `administer ai content chat`.
- Run via the AI provider (cost).
- Depend on core `block` and `ai`.
- Support Drupal 10 and 11.
- Ground answers in content.
- Support knowledge Q&A
- Reindex content
- Configure the chatbot.
- Serve permitted users.
- Answer grounded questions.
- Support site search chat
