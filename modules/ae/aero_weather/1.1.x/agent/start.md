<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Aero Weather — agent index

**Fetches and displays real-time weather using WeatherAPI** (responsive widgets/forecasts). Depends on core
`block`. Version **1.1.0**. Core `^10||^11`.

Integration/content-display — calls **WeatherAPI** (egress) with an **API key** (secret — env/Key, HTTPS); visitor
location = location data (consent). No access role.
