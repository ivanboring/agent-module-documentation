# AI Lead Chatbot — manual setup guide

**AI Lead Chatbot** (`ai_lead_chatbot`) puts a conversational chat widget on your
site that talks to visitors through OpenAI, works out their details from the
conversation — name, contact, what service they are interested in — and saves
completed enquiries as leads for your team to follow up. It is aimed at
marketing and sales: turning anonymous visitors on public pages into qualified
leads without a rigid form. Captured leads are stored as `chatbot_lead` entities
and reviewed by staff in an admin list.

The chat itself is intentionally open to **anonymous visitors** — that is the
point, since the widget lives on public pages. Two consequences follow that you
must plan for. First, every message a visitor sends triggers an OpenAI call billed
to your API key, and the module has **no built-in rate limiting** and **no CSRF
token** on the chat endpoint (its own code notes the missing CSRF check as a
to-do). That means an automated client could hammer the endpoint and run up your
OpenAI bill, or fill your leads table with junk. Before putting this on a busy
public site, front the `/chat` and `/chat/start` endpoints with an external rate
limiter or WAF, set a hard spending cap on the OpenAI key, and monitor lead-table
growth.

Lead data and configuration, by contrast, are properly gated: viewing and managing
leads require dedicated permissions, and the settings are behind an administer
permission.

This guide is written for a **human** clicking through the admin UI. If you want
terse, token‑cheap references for an AI coding agent, read the sibling
[`agent/`](../agent/start.md) docs instead.

## Contents

1. [Installation](installation/index.md) — install with Composer, enable the
   module, grant permissions, and connect OpenAI.

## Where it lives in the admin menu

- **Settings** — the module's configuration form, gated by the
  **Administer AI Lead Chatbot** permission, is where the OpenAI connection and
  chatbot behavior are set up.
- **Leads list** — an admin list of captured `chatbot_lead` entities, gated by the
  **View chatbot leads** / **Manage chatbot leads** permissions.
- **Public chat endpoints** — `/chat/start` and `/chat`, deliberately open to
  anonymous visitors so the widget can run on public pages.

## How to use it

1. Connect your OpenAI account in the settings form and configure how the bot
   should qualify visitors (see [Installation](installation/index.md)).
2. Grant staff the lead permissions so they can review captured enquiries; keep
   the administer permission to trusted admins.
3. Put protection in front of the public chat endpoints (rate limiter / WAF) and
   cap your OpenAI spend **before** exposing the widget on high-traffic pages.
4. As visitors chat, completed conversations are saved as leads for your team to
   follow up in the admin list.
