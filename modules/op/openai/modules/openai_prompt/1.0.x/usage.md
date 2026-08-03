OpenAI Prompt Completion Explorer adds an admin form (`/admin/config/openai/openai-prompt`) to enter a single prompt and get a completion back from OpenAI, similar to ChatGPT, using the core `openai.api` service.

---

A thin explorer submodule over OpenAI Core. It registers route `openai_prompt.prompt_form`
(its `configure` target) rendering `PromptForm`, guarded by the module's own permission
`access openai prompt`. The form takes a prompt plus model/temperature/max-tokens and returns
the model's completion (using `openai.api->completions()` or `chat()` depending on the model).
It stores no config and defines no plugins; it is a lightweight single-prompt playground.
Requires the OpenAI API key on the parent module.

---

- Enter a one-off prompt and read the completion in the admin.
- Prototype prompt wording for a planned feature.
- Compare completion vs chat behavior for a model.
- Tune temperature and max tokens interactively.
- Generate short copy or answers on demand.
- Validate the completion endpoint and account access.
- Demonstrate model behavior to stakeholders.
- Iterate on instruction phrasing to improve output.
- Draft outlines or summaries quickly.
- Test how the model completes a specific pattern.
- Explore token-cost implications of prompt length.
- Provide a simple prompt playground behind a permission.
- Sanity-check output before coding a prompt into a module.
- Answer a quick question using the site's API key.
- Generate example text for documentation.
- Gate access with the `access openai prompt` permission.
