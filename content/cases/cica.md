---
menu:
  main:
    parent: cases
    weight: 30
title: Cica
---

# Scraping and analyzing huge amounts of data

The Fair-play Alliance, a Slovak non-governmental organization, deals with detecting corruption and fraud, especially through data analysis. One of the sources of information they can work with is the Geodesy, Cartography and Cadastre Authority of the Slovak Republic, which contains information about real estate and their ownership.

Due to the fact that (the only one at the time) [this is the portal](https://cica.vugk.sk/) of the office that did not provide any automated access or search by relevant attributes, it was necessary to work with the data in the own databases.

## Solution

We scraped all 4M property lists, using many techniques (IP rotation, captcha solving, access management). Then we parsed them all using XPath, stored them in databases and made them available to several NGOs.

## Results

It is possible to search in all property lists such as owners, bank guarantees, etc., which is a very important source of information.
