OpenAI Devel Generate adds a GPT-powered variant of Devel Generate so that generated demo content bodies are written by OpenAI instead of Lorem Ipsum, exposed as a DevelGenerate plugin and a Drush command.

---

A developer-only submodule (tagged `developer`) that depends on `devel_generate`. It provides a
`ContentGPTDevelGenerate` DevelGenerate plugin and a Drush command
`devel-generate:content-gpt` (`OpenAIDevelCommands`) which generate nodes whose text is
produced via the core `openai.api` service (using GPT) rather than random filler. Options
mirror Devel Generate's content generator (number of nodes, etc.). It has no admin config of
its own beyond the DevelGenerate form. It is intended for local/dev environments to create
realistic-looking demo content; not for production. Requires the OpenAI API key on the parent
module and the Devel / Devel Generate modules.

---

- Generate demo nodes with realistic AI-written body text.
- Replace Lorem Ipsum with GPT content for demos.
- Populate a dev site with believable content for design review.
- Create sample articles for theming/QA work.
- Produce content that better exercises real layouts than random filler.
- Run generation from the UI via the DevelGenerate form.
- Run generation from the CLI with `drush devel-generate:content-gpt`.
- Specify how many nodes to generate.
- Seed a staging environment with plausible content.
- Test search/embeddings against meaningful text.
- Demonstrate a content model with topical copy.
- Generate content for client presentations.
- Stress-test a site with AI-generated bodies.
- Keep this to dev/local environments (developer tag).
- Reuse the shared `openai.api` service and API key.
- Combine with other Devel Generate options.
