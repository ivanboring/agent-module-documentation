<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Config Override (config_override) — agent index

Structured configuration overrides from a site file, a module, or **environment variables**
(`symfony/dotenv`). Core requirement `^10 || ^11`. **No routes, permissions or UI** — developer
infrastructure.

Three override sources:

| Class | Source |
|---|---|
| `SiteConfigOverrides` | site-level overrides |
| `ModuleConfigOverrides` | overrides shipped by a module |
| `EnvironmentConfigOverride` | environment variables via `symfony/dotenv` |

Registered by `ConfigOverrideServiceProvider`.

Key facts:
- **Overrides are runtime-only** — this is core's override system, and it is the point. An
  overridden value is what the site *uses*, but `drush cex` still writes the stored value. That
  keeps environment differences out of config exports, and it regularly confuses people who
  expect the export to match what they see.
- **Overridden values are not editable in admin forms.** Core deliberately shows the stored value
  and ignores form edits for overridden keys — correct behaviour, surprising to site builders.
- The environment-variable source is what makes twelve-factor / container deployment natural, and
  it is the right place to put per-environment endpoints. **Secrets are still better handled by a
  Key entity** (or `vault`, waves 58 and this one) than by config override, since overrides are
  readable to anything that can read config.
- Not to be confused with **`config_ignore`/`config_split`**, which decide what is exported;
  this decides what is *used at runtime*.
