<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
AI Lead Chatbot adds an OpenAI-backed chat widget that qualifies visitors and captures leads.

---

AI Lead Chatbot places a conversational chat widget on the site that talks to visitors via OpenAI, extracts lead details (name, contact, service interest) from the conversation, and stores completed leads as `chatbot_lead` entities that staff review under an admin list. It targets marketing/sales lead capture on public pages.

The chat endpoints (`/chat/start`, `/chat`) are intentionally open to anonymous visitors (`_access: 'TRUE'`), and each `/chat` POST invokes OpenAI on the site's key with no rate-limiting or CSRF token — the module's own routing carries a TODO to add CSRF. Operators should front it with rate limiting/WAF to prevent unauthenticated cost abuse. Lead admin is gated by `view chatbot leads` / `manage chatbot leads`; config by `administer AI Lead Chatbot`. Depends on core `system` and `user`.

---

- Place an AI chat widget on the site.
- Talk to visitors via OpenAI.
- Qualify and capture leads.
- Extract name/contact/service from chat.
- Store leads as `chatbot_lead` entities.
- Let staff review leads in an admin list.
- Expose `/chat/start` and `/chat` to anonymous visitors.
- Invoke OpenAI per message on the site's key.
- Lack built-in rate-limiting on `/chat`.
- Lack a CSRF token (self-noted TODO).
- Front with rate-limiting/WAF to curb cost abuse.
- Gate lead viewing with `view chatbot leads`.
- Gate lead management with `manage chatbot leads`.
- Gate config with `administer AI Lead Chatbot`.
- Depend on core `system` and `user`.
- Require Drupal 11.
- Support marketing/sales capture.
- Filter chat input with Xss::filter.
- Persist completed leads.
- Monitor provider spend.
