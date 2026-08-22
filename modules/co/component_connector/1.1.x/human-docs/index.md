# Component Connector — manual setup guide

**Component Connector** (`component_connector`) helps developers wire external
front-end components and layouts into the current Drupal theme. You define and
register component definitions in **YAML files**, and each definition can declare
a theme hook, the CSS/JS libraries the component needs, and the variables and
custom fields passed into its render. The module then takes care of registering
the theme hook and loading the right libraries with their dependencies, so a
design-system component can be rendered through Drupal's normal theme layer.

This is a developer/theming tool: components are authored in code and rendered
through templates, and the module has no content-authoring or access-control role
of its own. It has no other module dependencies.

This guide is written for a **human** clicking through the admin UI. If you want
terse, token‑cheap references for an AI coding agent, read the sibling
[`agent/`](../agent/start.md) docs instead.

## Contents

1. [Installation](installation/index.md) — install with Composer and enable the
   module.

There is **no configuration page** for this module — components are defined in
YAML files in your theme or module, not through an admin form.

## Where it lives in the admin menu

Component Connector adds no admin settings page. You work with it entirely in
code: declare your component definitions in YAML files, add the CSS/JS libraries
they reference, and render the components through your templates. Clearing the
cache (`drush cr`) after adding or changing a definition ensures Drupal picks up
the new theme hooks and libraries.
