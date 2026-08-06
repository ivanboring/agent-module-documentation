<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Monitoring HRM exposes `/healthz` — one endpoint whose HTTP status code says whether any of the Monitoring module's health sensors is failing.

---

The shape is deliberate and correct for its consumers. A load balancer, a Kubernetes liveness probe or an uptime checker cannot parse a dashboard; they can act on a status code. Reducing the whole sensor set to one code is what makes Drupal's health visible to the infrastructure that decides whether to keep sending it traffic.

`/healthz` is the conventional path, which matters more than it sounds — orchestration tooling and monitoring agents default to it, so the endpoint works with existing configuration rather than requiring a custom probe definition.

The route carries a custom access requirement, `_monitoring_hrm_endpoint_access`, rather than a permission. That is the right decision for this kind of endpoint: the caller is a machine with no session, so a permission check would either fail or force the probe to authenticate. **Review what that access check actually allows before deploying**, because the two failure modes are opposite and both bad — an endpoint that requires authentication is a probe that always reports unhealthy, and an endpoint open to the internet tells anyone who asks whether your site's internals are degraded, which is reconnaissance.

The usual arrangement is to restrict it at the network layer to the probing infrastructure. Whatever the module allows, the deployment should be explicit about who can reach `/healthz`.

---

- Give a load balancer a health signal.
- Configure a Kubernetes liveness probe.
- Point an uptime checker at a real health check.
- Reduce a sensor dashboard to one status code.
- Use the conventional /healthz path.
- Take an unhealthy instance out of rotation.
- Alert when a Monitoring sensor fails.
- Review the endpoint's access check before deploying.
- Restrict /healthz at the network layer.
- Avoid exposing internal health to the internet.
- Avoid an endpoint that requires authentication.
- Combine with the Monitoring module's sensors.
- Add a health check to a deployment pipeline.
- Verify the endpoint after a release.
- Distinguish liveness from readiness checks.