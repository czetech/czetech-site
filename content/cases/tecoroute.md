---
menu:
  main:
    parent: cases
    weight: 10
title: TecoRoute
---

# Decryption of the proprietary protocol and custom implementation of the application

There is [Tecomat Foxtrot](https://catalog.tecomat.cz/en/category/plc-tecomat-foxtrot) PLC that communicates via the [TecoRoute](https://www.tecomat.com/modules/DownloadManager/download.php?alias=txv00338_02_tecoroute_en) cloud service with a proprietary [Mosaic IDE](https://www.tecomat.com/download/software-and-firmware/mosaic/) that cannot be controlled programmatically.

The Customer wants to implement communication with PLC via TecoRoute in their own software.

## Solution

We reverse engineered TecoRoute service protocol and created own implementation of client and also server part. The implementation includes Connector functionality, which can be used to access the PLC via the TecoRoute service as in the local network.

## Results

The Customer is completely independent of Teco and operates the TecoRoute service on its own infrastructure. With minimal resources, it maintains an open connection to hundreds of PLCs.

## Open-source contribution

The client functionality of [TecoRoute](https://github.com/czetech/tecoroute) library was published as open-source. There is also [TecoRoute Manager](https://github.com/czetech/tecoroute-manager) as an example of working with TecoRoute library.

Server functionality can't be published as open-source at the moment, because in that case we would publish a huge security vulnerability that allows to log in to the Teco's service as any PLC.
