<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Custom Configuration provides a way to store multiple configuration values based on domain and language.

---

Custom Configuration provides a store for arbitrary configuration values keyed by domain and language
— so a site can hold different settings per domain and per language (labels, toggles, small bits of
content/config) and read the right one for the current context. It is configured at
`custom_configuration.configuration_list`.

Use it on multi-domain/multilingual sites that need per-domain/per-language configuration values that core
config doesn't neatly cover. It is an administration/configuration feature; the stored values are
admin-defined configuration and it has no access-control role. Note that if any stored value is
sensitive, standard config-handling caution applies (config is not a secret store — don't put secrets in
it). Configure the values per domain/language.

---

- Store config per domain and language.
- Hold different settings per domain.
- Vary configuration by language.
- Read the right value per context.
- Configure at the configuration list.
- Support multi-domain sites.
- Support multilingual config.
- Store admin-defined values.
- Have no access-control role.
- Not store secrets in config.
- Handle per-domain labels/toggles.
- Read context-appropriate config.
- Manage per-domain settings.
- Configure per-language values.
- Provide flexible config storage.
- Vary settings by context.
- Store small config bits.
- Support domain-specific config.
- Configure the values.
- Manage contextual configuration.
