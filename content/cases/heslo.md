---
menu:
  main:
    parent: cases
    weight: 20
title: Heslo
---

# Application with high traffic in a very short time

In Slovakia, a TV show a.k.a. the vaccination lottery was to be launched the next day, where the principle was to pick up the phone call and read the password ("heslo") from the TV. However, many of the people involved did not have a television or have other plans at the time.

## Solution

We took 8 hours to create a mobile application that will help them and keep this password up to date on their phone.

We created a Python backend service Heslo Core with transparent [API specification](https://heslo-core-prod.apps.czetech.net/api/v1/ui/) scalable deployed in Kubernetes cluster. This service provides the necessary password.

In Flutter, we created a simple [Android](https://play.google.com/store/apps/details?id=tech.cze.heslo), iOS and [web app](https://heslo.cze.tech/) that clearly displays the password whenever the user views it.

## Results

The application was used by tens of thousands of people on the first day. The backend scaled automatically and the application responded quickly to all users. Thanks to the specified API, various other applications were created that could use it.

## Open-source contribution

All [Heslo](https://github.com/czetech/heslo) components are open-source, mainly as a demonstration of a simple Flutter + Python API application.
