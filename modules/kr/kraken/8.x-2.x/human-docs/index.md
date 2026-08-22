# Kraken.io — manual setup guide

**Kraken.io** (`kraken`) plugs the [Kraken.io](https://kraken.io/) image
optimization web service into Drupal's **Image Optimize** (`imageapi_optimize`)
pipeline system. Image Optimize lets you build a pipeline of processors that run
over your derivative images; most processors shell out to a local binary (like
jpegoptim or pngquant), but this one offloads the work to Kraken.io's paid web
service instead. That's the right trade when you want aggressive, format‑aware
compression — including **lossy** mode and **WebP** output — without installing and
maintaining optimization binaries on every environment.

You don't configure Kraken.io on its own page. Instead you add a **Kraken type
processor** to an Image Optimize pipeline, and its options live right there on the
processor: a Kraken.io **API key** and **secret**, plus **lossy** and **WebP**
toggles (and optional request logging). The module can also log successes to the
log and shows your Kraken account and quota status on the site status report.

Two things are worth weighing before you rely on it. First, a **credential
caveat**: the API key and secret are stored in the pipeline's configuration and
shown back in the processor form as plain text — so they travel into a
configuration export (and usually git) and appear in the settings page in the
clear. Kraken.io credentials are lower‑stakes than infrastructure keys (the worst
case is someone spending your optimization quota), but a service secret in git is
still a secret in git; see [Configuration](configuration/index.md) for how to keep
it out. Second, **data egress**: every optimized derivative is a round trip to a
third party, so first‑render latency depends on Kraken.io and your images leave
your infrastructure to be processed — fine for public images, a deliberate
decision for anything sensitive.

This guide is written for a **human** clicking through the admin UI. If you want
terse, token‑cheap references for an AI coding agent, read the sibling
[`agent/`](../agent/start.md) docs instead.

## Contents

1. [Installation](installation/index.md) — install with Composer and enable it
   alongside Image Optimize.
2. [Configuration](configuration/index.md) — add the Kraken processor to a
   pipeline, enter your API key/secret, and mind the credential caveat.

## Where it lives in the admin menu

Kraken.io has **no standalone settings page**. You configure it on a processor
inside an **Image Optimize** pipeline at **Configuration → Media → Image Optimize
pipelines** (`/admin/config/media/imageapi-optimize-pipelines`). Its account and
quota status appear on the status report at **Reports → Status report**.

## How to use it

Create or edit an Image Optimize pipeline, add a **Kraken** processor, enter your
Kraken.io credentials, choose lossy and/or WebP, and then assign that pipeline to
the image styles you want optimized. From then on, derivatives generated through
those styles are compressed by Kraken.io.
