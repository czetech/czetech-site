# Czetech Site

Czetech website.

## Installing

### Run from [Docker Hub][docker-hub]

Run the image from Docker Hub:

```shell
docker run -p 80:80 czetech/czetech-site
```

### Install to Kubernetes using Helm

Setup Helm repository:

```shell
helm repo add czetech https://charts.cze.tech/
```

Install Helm chart:

```shell
helm install czetech-site czetech/czetech-site \
  --set ingress.enabled=true \
  --set ingress.hosts[0]=<ingress-host>
```

see the [chart] for more options.

## Source code

The source code is available at <https://github.com/czetech/czetech-site>.

[chart]: https://github.com/czetech/czetech-site/tree/main/chart
[docker-hub]: https://hub.docker.com/r/czetech/czetech-site
