OpenAI ChatGPT Explorer adds an admin form (`/admin/config/openai/chatgpt`) to send messages to OpenAI's Chat (ChatGPT) endpoint and see the response, using the core `openai.api` service.

---

A thin explorer submodule over OpenAI Core. It registers route `openai_chatgpt.chat_form`
(its `configure` target) rendering `ChatGptForm`, guarded by the module's own permission
`access openai chatgpt`. The form collects a prompt/messages, model, temperature, and max
tokens and calls `openai.api->chat($model, $messages, $temperature, $max_tokens)`, showing the
assistant reply. It stores no config and defines no plugins; it is meant for experimenting with
chat prompts and model behavior in the admin UI. Requires the OpenAI API key on the parent
module.

---

- Experiment with ChatGPT prompts inside the Drupal admin.
- Compare responses across models (e.g. gpt-3.5-turbo vs gpt-4).
- Tune temperature and max-token settings interactively.
- Validate the chat endpoint and account access.
- Draft copy or answers to reuse elsewhere on the site.
- Prototype a system/user message pair before coding it.
- Test prompt phrasing for a planned AI feature.
- Generate ideas or outlines during content planning.
- Check how the model handles a specific instruction.
- Demonstrate ChatGPT capabilities to stakeholders.
- Debug unexpected model output by iterating in the form.
- Explore token-cost implications of longer prompts.
- Give trusted admins a chat playground behind a permission.
- Quickly answer a one-off question using the site's API key.
- Sanity-check moderation-adjacent prompt behavior.
- Gate access with the `access openai chatgpt` permission.
