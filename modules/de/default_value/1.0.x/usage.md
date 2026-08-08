<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Default Value provides a default value for existing entities on load, filling fields that lack a stored value.

---

Default Value provides default values for fields on existing entities at load time — so when an entity
that predates a field (or has an empty field) is loaded, the field presents a configured default rather than
being empty. This is useful after adding a field to existing content, giving a fallback value without
re-saving every entity. It is configured at `default_value.config` and provides its own permissions, in the
Fields package.

Use it to supply fallback field values for existing content. It is a content/fields feature affecting the
loaded value (a display/runtime default); it does not change access. Note the default is applied on load
(not persisted unless saved), so behaviour is a runtime fallback. Configure the default per field.

---

- Provide defaults for existing entities.
- Fill empty fields on load.
- Give a fallback field value.
- Handle fields added to existing content.
- Configure at default_value.config.
- Provide its own permissions.
- Apply the default on load.
- Not change access.
- Avoid re-saving every entity.
- Configure the default per field.
- Supply fallback values.
- Handle empty fields.
- Present a runtime default.
- Configure field defaults.
- Fill missing values.
- Default existing content.
- Provide field fallbacks.
- Set load-time defaults.
- Handle legacy content.
- Configure defaults.
