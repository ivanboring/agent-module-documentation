<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Chat Messenger provides 1:1 and group chat between site users via AJAX long-polling.

---

Chat Messenger **provides user-to-user chat** — 1:1 and group messaging between site users via AJAX
long-polling, with emoji reactions, presence, typing indicators, read receipts, profile pictures and file
attachments. It depends on core User, File, Image and the Flag module, and provides its own permissions.

Use it to add site chat. It is a user-engagement/communication feature. Security/data handling: it stores
**private messages between users (personal data/PII)** and allows **file attachments** — so ensure the chat/message
endpoints strictly enforce that a user can only read their own conversations (verify per-conversation access),
validate/scan uploaded attachments, and handle message data per your privacy/retention policy. It has its own
permissions. Configure the chat.

---

- Provide 1:1 and group chat.
- Use AJAX long-polling.
- Support reactions/presence/attachments.
- Depend on core User/File/Image + Flag.
- Provide its own permissions.
- Serve communication.
- Store private messages between users (PII) + allow file attachments.
- Enforce that users read only their own conversations (verify per-conversation access).
- Validate/scan uploaded attachments + handle data per privacy/retention policy.
- Configure the chat.
- Handle chat.
- Send messages.
- Configure the chat.
- Attach files.
- Handle the messages.
- React to messages.
- Secure the conversations.
- Handle presence.
- Chat privately.
- Provide user chat.
