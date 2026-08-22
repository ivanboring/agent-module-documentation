# ComputerMinds tools — manual setup guide

**ComputerMinds tools** (`cm_tools`) is a collection of developer tools and helpers
written by the [ComputerMinds](https://www.computerminds.co.uk/) agency — utility
functions, services and small conveniences that other custom code and modules can
build on to ease common Drupal development tasks.

It isn't a feature you configure and use through the admin UI; it's a **developer
dependency**. You install it because another module needs it, or because you want to
use the helper APIs it provides in your own code. It has **no content or access role
of its own**, no settings form, and no admin pages — everything it offers is
consumed from PHP.

Because the value is entirely in the code‑level helpers, there's nothing to click
through after enabling it: add it as a dependency, enable it, and call the utilities
you need from your own module.

This guide is written for a **human** clicking through the admin UI. If you want
terse, token‑cheap references for an AI coding agent, read the sibling
[`agent/`](../agent/start.md) docs instead.

## Contents

1. [Installation](installation/index.md) — install with Composer and enable the
   module.

There is **no configuration page** — this is a developer utility used from code.

## How to use it

Enable the module (usually as a dependency of your own custom module), then call the
helper functions and services it provides from your code. Refer to the module's own
source and the [`agent/`](../agent/start.md) docs for the specific helpers
available in this release.
