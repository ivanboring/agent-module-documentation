<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Speakeasy (speakeasy) — agent index

Text-to-speech via the **browser's Speech Synthesis API**, with per-user preferences.
Configure at `/admin/config/speakeasy`; user preferences at `/user/speakeasy/preferences`.
Version **1.2.1**. Core `^9 || ^10 || ^11`, PHP 8.0.
Permissions: `administer speakeasy settings`, `manage speakeasy user preferences`.

**The design decision that defines it:** speech happens on the visitor's device. Nothing is sent
anywhere — no per-character billing, no third-party processing, no cookies, no consent question.
Striking contrast with `elevenlabs` (wave 83), where every rendering is a billed API call. The trade
is **variable system voice quality**.

**State the distinction clearly:** a read-aloud button helps people who find reading tiring, are
reading in a second language, or are multitasking — a real and underserved group. It is **not** a
screen reader substitute; someone using one already has better-integrated speech. A site that adds
this and considers accessibility handled has done the opposite of the work.