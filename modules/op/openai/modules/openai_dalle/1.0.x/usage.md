OpenAI DALL·E adds an admin form (`/admin/config/openai/dalle`) that generates images from a text prompt via OpenAI's DALL·E image endpoint, using the core `openai.api` service.

---

A thin UI submodule over OpenAI Core. It registers route `openai_dalle.dalle_form` (its
`configure` target) rendering `DalleForm`, guarded by the module's own permission
`access openai dalle`. The form takes a prompt, model, size, quality, style, and response
format and calls `openai.api->images($model, $prompt, $size, $response_format, $quality,
$style)`, returning the generated image(s). It defines no config, schema, or plugins; it is an
explorer for the image endpoint. Requires the OpenAI API key on the parent module.

---

- Generate an image from a text prompt in the Drupal admin.
- Prototype DALL·E prompts before integrating image generation into code.
- Create hero/illustration imagery for a page or campaign.
- Explore image sizes and quality/style options.
- Produce placeholder or concept art during content creation.
- Generate social-media graphics from a description.
- Test the DALL·E endpoint's connectivity and account access.
- Iterate on prompt wording to refine visual output.
- Create thematic imagery for blog posts.
- Generate variations for A/B visual testing.
- Produce icons or spot illustrations from prompts.
- Draft mood-board images for a design.
- Give editors a self-service image-generation tool behind a permission.
- Compare `natural` vs `vivid` styles.
- Generate images at different aspect ratios/sizes.
- Gate DALL·E access with the `access openai dalle` permission.
