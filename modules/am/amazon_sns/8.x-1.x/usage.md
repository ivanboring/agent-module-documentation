<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Amazon SNS integrates AWS Simple Notification Service, receiving SNS notifications at a webhook and dispatching them as Drupal events, with the SNS message signature validated.

---

AWS SNS is a pub/sub notification service; a Drupal site subscribed to a topic receives HTTP POST notifications. Amazon SNS exposes the endpoint (`/_amazon-sns/notify`) and turns incoming notifications into Drupal events other code can react to. Because AWS posts to it unauthenticated, the endpoint is necessarily open (`_access: 'TRUE'`) — and the **security is the signature**, which this module gets right. Verified by reading: it validates each message with the AWS SDK's `MessageValidator` (`$validator->validate($message)`), which is enforced by exception — an invalid or forged signature throws and the notification is never processed. The SDK's validator also checks the signing-certificate URL is a legitimate AWS host before fetching it, guarding against SSRF via a spoofed `SigningCertURL`. So the open route is correct: the SNS signature is the authentication. Configure the topic/subscription in AWS and confirm the AWS SDK is a current version.

---

- Receive AWS SNS notifications.
- Subscribe Drupal to an SNS topic.
- React to SNS messages as events.
- Handle S3/CloudWatch notifications.
- Validate the SNS signature.
- Reject forged notifications.
- Expose the SNS webhook endpoint.
- Confirm the AWS SDK is current.
- Configure the topic in AWS.
- Process pub/sub events.
- Enable when needed.
- Keep disabled otherwise.
- Restrict administration.
- Confirm on your site.
- Test before production.
- Review configuration.
- Pair with related modules.
- Keep setup minimal.
- Verify theme fit.
- Audit access.
- Match your use case.
- Confirm compatibility.