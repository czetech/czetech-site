---
menu:
  main:
    parent: cases
    weight: 10
title: Next
---

# Full-featured application with the entire infrastructure

In partnership with an established smart home company, want to create a next-level smart home application based on a timeline with AI smart suggestions. The basis for us was [mobile app design](https://studioecht.com/casestudy/domotron/), specification and experience of a company who has created many smart homes.

## Solution

We created the architecture and each component of the entire solution, which consisted of a mobile application and a microservices-composed backend. The first hardware vendor we have implemented is Legrand / Netatmo / Bticino with a [Netatmo account](https://auth.netatmo.com/en-us/access/login), from which a timeline is created that displays individual events (past or future) in the given home.

The app is built with Flutter framework, thus achieving an application for all platforms (Android, iOS, Windows, macOS, Linux) and the web in one codebase. Backend consists of (mainly) Python services for authentication, user actions, interactions with hardware vendors and more, which communicate with each other using gRPC or API always defined by the OpenAPI Specification. Each component has a corresponding Helm chart and is easily deployable to Kubernetes cluster, where the entire solution runs.

## Results

Although the product is still under development, a basic version of the [Next](https://app.domotron.com/) is released, in which it is possible to try out demo access or pair your Netatmo account and watch what is happening on the timeline.

## Open-source contribution

We have created an open source [NetatmoAPI](https://github.com/czetech/netatmoapi), a high-level Netatmo library that can be used to control any "with Netatmo" device. Thanks to a lot of reverse engineering, the library has access to many undocumented Netatmo API functions, a real-time websocket and also access without its own OAuth application.

When we were working on how to redirect a user from Sign in with Apple back to native app, we created [OAuthURI](https://github.com/czetech/oauthuri), which makes it easy to do so.

We also contributed to various libraries, e.g. for [flutter_web_auth](https://github.com/LinusU/flutter_web_auth) we have added the [web support](https://github.com/LinusU/flutter_web_auth/commit/1de8864a334edb02b486d85ee1574e122180c738).
