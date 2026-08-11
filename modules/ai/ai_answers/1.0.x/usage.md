<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
AI Answers is a retrieval-augmented answer engine that produces cited answers via an AI Agent.

---

AI Answers provides a RAG (retrieval-augmented generation) answer engine: user questions are answered by an AI Agent that retrieves relevant indexed content and returns answers with citations back to the source material. It brings its own retrieval configuration on top of AI Search, so answers are grounded rather than free-form hallucination.

Permissions separate usage (`use ai answers`), administration (`administer ai answers`), and trace inspection (`view ai answers traces`). Traces can reveal retrieved content and prompts, so restrict trace viewing. Depends on `ai_agents` and `ai_search`; requires Drupal 11.2+.

---

- Answer questions with RAG.
- Ground answers in an AI Agent.
- Return citations to source content.
- Bring its own retrieval configuration.
- Build on AI Search retrieval.
- Reduce hallucination via grounding.
- Gate usage with `use ai answers`.
- Gate admin with `administer ai answers`.
- Gate trace viewing with `view ai answers traces`.
- Restrict trace access (reveals prompts/content).
- Depend on `ai_agents` and `ai_search`.
- Require Drupal 11.2+.
- Serve a cited answer engine.
- Retrieve relevant indexed content.
- Support knowledge-base Q&A.
- Configure retrieval per site.
- Inspect answer traces for debugging.
- Integrate with the AI module stack.
- Provide grounded responses.
- Support taskable AI agents.
