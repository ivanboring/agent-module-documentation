<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# CAPTCHA Questions — agent index

A **question-and-answer CAPTCHA** (require answering a configurable question to submit — block bots).
`captcha_questions_dblog` submodule. Provides permissions. Version **2.0.2**. Core `^8||^9||^10||^11`.

**Anti-abuse-positive** (CAPTCHA). A static Q&A is **weak vs targeted attackers** (fixed answers are
scriptable) — best for low-sophistication bot spam; rotate questions, combine with rate limiting/honeypot for
serious abuse. No access role beyond permission.
