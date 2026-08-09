<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Bitly Shortener — agent index

Shortens URLs via the **Bitly API**, with a Twig function (`{{ bitly_shortener('…') }}`). Version **2.1.4**.
Core `^9||^10||^11`.

Integration — calls Bitly over **TLS** (Guzzle default) with an **access token** (store as a secret). The Twig
function makes an **external call at render time** (perf/rate-limit; sends the URL to Bitly). No access role.
