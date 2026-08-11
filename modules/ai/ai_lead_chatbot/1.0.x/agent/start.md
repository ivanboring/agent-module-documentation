<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# AI Lead Chatbot — agent index

**OpenAI lead-capture chatbot** storing `chatbot_lead` entities. Version **1.0.0-rc12**. Core `^11`.

`/chat` and `/chat/start` are **anonymous** (`_access: TRUE`); `/chat` calls OpenAI per POST with **no rate limit / no CSRF** (self-noted TODO) → unauthenticated cost-abuse — front with rate-limiting/WAF. Lead perms: `view/manage chatbot leads`; config `administer AI Lead Chatbot`. See local security.md.