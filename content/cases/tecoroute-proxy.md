---
menu:
  main:
    parent: cases
    weight: 10
title: TecoRoute Proxy
---

# Proxy that programmatically logs a user into a legacy web service

The Customer needs to automatically log in to the [TecoRoute](https://route.tecomat.com/TR_LOGIN.XML) web service from his IT system. TecoRoute web service doesn't provide log in with API or simple request. Another downside is that even after logging in, the session expires after one minute, which is very uncomfortable.

## Solution

We created a reverse proxy server that allows programmatically log in to the TecoRoute web service in background. It checks before each request whether the correct user is logged in and, if not, logs in. Thanks to client-side sessions and asynchronous design in Python, the service is easy to run and processes a number of requests with minimal resources.

## Results

The user can be automatically logged in by simple redirect link from Customer's own IT system with custom expiration time.

## Open-source contribution

The entire [TecoRoute Proxy](https://github.com/czetech/tecoroute-proxy) was published as open-source.
