# Classes Extractor — manual setup guide

**Classes Extractor** (`classes_extractor`) is a developer and build tool. It
collects the CSS classes actually used across your site — via a pluggable
extraction system — and exports them to a file, which is exactly what you need when
you run a CSS optimiser such as **Tailwind** or **PurgeCSS** and want a safelist of
classes that must never be stripped. It can also expose the collected list to
external tooling.

Practically, the module does two things. It ships a **Drush command** (`drush cec`)
that scans the specified modules for backend CSS classes and writes the list to a
file for your build pipeline to consume. And it exposes an **API endpoint**
(`GET /api/extracted-classes`) that returns the extracted classes as JSON, so an
external system or another module can fetch them programmatically.

The extraction logic itself is built on Drupal's plugin system, so you can add your
own extractor plugin (implementing the module's extractor interface) to cover
class sources the defaults don't, without patching the module. Classes Extractor
renders nothing on the page and has no content or access-control role of its own —
it is a utility that gathers class names. It supports Drupal 10 and 11.

This guide is written for a **human** clicking through the admin UI. If you want
terse, token‑cheap references for an AI coding agent, read the sibling
[`agent/`](../agent/start.md) docs instead.

## Contents

1. [Installation](installation/index.md) — install with Composer and enable the
   module.
2. [Configuration](configuration/index.md) — the settings form and how to run the
   extraction.

## Where it lives in the admin menu

The module provides a settings form (config `classes_extractor.settings`) where you
choose which modules to scan and how the export behaves. See
[Configuration](configuration/index.md) for the details.

## How to use it

The typical workflow is:

1. Configure the extractor on the settings form (which modules to scan, export
   options).
2. Run the extraction from the command line:

   ```bash
   drush cec
   ```

   This scans the configured modules for their backend CSS classes and writes the
   list to a file.

3. Feed that file into your CSS build (for example a Tailwind or PurgeCSS
   safelist), or fetch the list from another system via the JSON endpoint:

   ```
   GET /api/extracted-classes
   ```
