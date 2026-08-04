# UI Skins — how values reach the page

Three hooks (attribute-based `#[Hook(...)]` classes in `src/Hook/`).

## Inline CSS variables — `hook_page_top` (`PageTop`)

Reads `{active_theme}.settings` third-party `ui_skins.css_variables`, regroups the saved values by
scope, and emits one `#type => 'html_tag'` `<style>` element whose value is built by
`UiSkinsUtility::getCssVariablesInlineCss()`:

```
<selector>{--var-name:value;--other:value;}<selector2>{...}
```

Cached against cache tag `config:{theme}.settings`. Only scalar values are emitted.

## Body/HTML attributes + libraries — `hook_preprocess_html` (`PreprocessHtml`)

Reads the selected skin (`ui_skins.theme` setting), resolves it plus its dependency chain via
`ThemePluginManager::getDefinitionWithDependencies()`, and for each definition merges
`{key: value}` into `$variables['attributes']` or `$variables['html_attributes']`
(`AttributeHelper::mergeCollections`). `key: class` values are run through `Html::getClass()`. Any
`library` on a definition is added to `#attached['library']`.

## `hook_form_system_theme_settings_alter` (`FormSystemThemeSettingsAlter`)

Adds the skin-selection `select` to a theme's settings form (see configure/theme-settings.md).

## Security / hardening note (not a reported finding)

`getCssVariablesInlineCss()` concatenates the stored scope selector and variable value **verbatim**
into the inline `<style>` — no CSS escaping. The only writer of these values is the
`administer themes` theme-settings UI (a `restrict access: true` core permission), i.e. a trusted theme
administrator, so this is admin-controlled config, not attacker input — hence not a security finding.
Still, be aware a theme admin can inject arbitrary CSS (including breaking out of the `<style>` context)
via a crafted scope/value; treat `administer themes` as the trust boundary it already is.
