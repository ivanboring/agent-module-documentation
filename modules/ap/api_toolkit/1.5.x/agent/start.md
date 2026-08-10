<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# API Toolkit — agent index

A **simple framework for creating custom API endpoints/serialized responses** (`api_toolkit_examples`
submodule). Depends on core `serialization`. Version **1.5.1**. Core `^10||^11`.

Developer/web-services — **you own access control**: each endpoint you build must define `_access`/`_permission`
and check entity/field access. No access role of its own.
