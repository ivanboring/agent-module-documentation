<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Droost — agent index

**Exposes codebase/application introspection AND gated WRITE tools to AI coding agents over MCP** (Drupal analog of
Laravel Boost). Depends on `mcp_server`. Provides permissions. Version **1.0.0-alpha4**. Core `^10.3||^11||^12`.

Developer-only — **LOCAL DEVELOPMENT ONLY** (install with `require-dev`; the module says do not run in
production). It grants an agent codebase introspection + gated writes — a serious RCE/data-exposure risk if
internet-facing. Bind the MCP endpoint to local/trusted access; never enable in production; treat permissions as
highly sensitive.
