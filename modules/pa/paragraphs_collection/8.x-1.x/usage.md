<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Paragraphs Collection provides behaviour plugins, style plugins and grid layouts for Paragraphs — and describes itself, in its own module description, as a collection of **EXPERIMENTS**.

---

Paragraphs gives editors component-assembled pages and provides the mechanism rather than the components. Two directions have been taken from there: pre-built paragraph *types* like the EPT family, and pre-built *plugins* that change how any paragraph behaves. This module is the second — behaviour plugins such as a lockable state, style plugins that apply presentation classes, and grid layouts with a report at `/admin/reports/paragraphs_collection/layouts` listing what is available. It comes from the Thunder distribution's ecosystem and shows it: capable, opinionated and closely tied to the way Thunder builds pages. Version **8.x-1.0-alpha12** on `^10.2 || ^11` — an **alpha**, and the module's own capitalised "EXPERIMENTS" is doing deliberate work in that description. Take it at face value: plugins here may change shape between releases, and behaviour plugin settings are stored on the paragraph entities themselves, so a plugin that changes or disappears leaves data behind on content. It defines an `administer lockable paragraph` permission plus a `permission_callbacks` entry generating further permissions per plugin. The realistic assessment for a new project: read it for the ideas, adopt individual pieces knowingly, and do not build a client's page-building strategy on an alpha that names itself an experiment unless someone is prepared to own the churn.

---

- Add a lockable state to a paragraph.
- Apply style classes to a component.
- Use a grid layout for paragraphs.
- Lock a section against editing.
- Explore paragraph behaviour plugins.
- See available grid layouts.
- Add presentation options to any paragraph.
- Study a Thunder-style approach.
- Prototype component behaviours.
- Add per-plugin permissions.
- Arrange paragraphs in a grid.
- Apply a style plugin to a type.
- Learn the behaviour plugin API.
- Restrict editing of a locked component.
- Add layout options to paragraphs.
- Evaluate paragraph plugin patterns.
- Reuse a style across paragraph types.
- Compare with pre-built paragraph types.
