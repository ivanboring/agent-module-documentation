<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Aero Weather displays real-time weather widgets using WeatherAPI.

---

Aero Weather **displays weather widgets** — fetching real-time weather and forecasts from WeatherAPI and
rendering responsive weather widgets (layouts, palettes, metrics). It depends on core Block.

Use it to show weather. It is an integration/content-display feature. Security/data handling: it **calls the
external WeatherAPI** (egress) with an **API key** (store as a secret — env/Key — over HTTPS); if it uses the
visitor's location, that's location data (consent/disclose). It has no access-control role. Configure the
WeatherAPI key.

---

- Display weather widgets.
- Fetch real-time weather + forecasts.
- Use WeatherAPI.
- Depend on core Block.
- Serve integration/content display.
- Show weather.
- Call the external WeatherAPI (egress) with an API key.
- Store the API key as a secret (env/Key, HTTPS).
- Handle visitor location as location data (consent/disclose).
- Have no access-control role.
- Configure the WeatherAPI key.
- Handle weather.
- Show forecasts.
- Configure the API.
- Fetch weather.
- Handle the integration.
- Display weather.
- Render widgets.
- Secure the key.
- Provide weather widgets.
