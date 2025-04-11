
# argonDash <img src="http://www.rinterface.com/inst/images/argonDash.svg" width=200 align="right" alt="argon hex sticker"/>

[![R build
status](https://github.com/RinteRface/argonDash/workflows/R-CMD-check/badge.svg)](https://github.com/RinteRface/argonDash/actions)
[![CRAN
status](https://www.r-pkg.org/badges/version/argonDash)](https://cran.r-project.org/package=argonDash)
[![lifecycle](https://img.shields.io/badge/lifecycle-maturing-ff69b4.svg)](https://www.tidyverse.org/lifecycle/#maturing)
[![cranlogs](https://cranlogs.r-pkg.org/badges/argonDash)](https://cran.r-project.org/package=argonDash)
[![total](https://cranlogs.r-pkg.org/badges/grand-total/argonDash)](https://www.rpackages.io/package/argonDash)

> argon Bootstrap4 dashboard template for Shiny

## Installation

`{argonDash}` requires to install `{argonR}`.

``` r
install.packages("argonR")
# devel version
devtools::install_github("RinteRface/argonDash")
# from CRAN
install.packages("argonDash")
```

## Demo

You can play with the demo app below and modify the code.

<div class="card bslib-card bslib-mb-spacing html-fill-item html-fill-container" data-bslib-card-init data-full-screen="false" data-require-bs-caller="card()" data-require-bs-version="5" id="bslib-card-6679" style="margin: 0 auto; float: none;">
<div class="card-body bslib-gap-spacing html-fill-item html-fill-container" style="margin-top:auto;margin-bottom:auto;flex:1 1 auto;">
<iframe class="html-fill-item" src="https://shinylive.io/r/editor/#code=NobwRAdghgtgpmAXGKAHVA6ASmANGAYwHsIAXOMpMAGwEsAjAJykYE8AKFgcxIBEoAzgAsAlAB0IdJiw7DaEVuIgS5CgILpetRuwGsB5GBgBmtanHZiwcAB6xU5gQHouUaubZXcAAlRQCANZQXHDeALzeVtx8gkJWIkpgAL4AukA" height="700" width="100%" style="border: 1px solid rgba(0,0,0,0.175); border-radius: .375rem;" allowfullscreen="" allow="autoplay" data-external="1"></iframe>
</div>
<bslib-tooltip placement="auto" bsOptions="[]" data-require-bs-version="5" data-require-bs-caller="tooltip()">
<template>Expand</template>
<button aria-expanded="false" aria-label="Expand card" class="bslib-full-screen-enter badge rounded-pill"><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" style="height:1em;width:1em;fill:currentColor;" aria-hidden="true" role="img"><path d="M20 5C20 4.4 19.6 4 19 4H13C12.4 4 12 3.6 12 3C12 2.4 12.4 2 13 2H21C21.6 2 22 2.4 22 3V11C22 11.6 21.6 12 21 12C20.4 12 20 11.6 20 11V5ZM4 19C4 19.6 4.4 20 5 20H11C11.6 20 12 20.4 12 21C12 21.6 11.6 22 11 22H3C2.4 22 2 21.6 2 21V13C2 12.4 2.4 12 3 12C3.6 12 4 12.4 4 13V19Z"/></svg></button>
</bslib-tooltip>
<script data-bslib-card-init>bslib.Card.initializeAllCards();</script>
</div>

<br/>

``` r
library(argonDash)
argonDashGallery()
```

We provide some placeholder images served in the `images` folder, so you
just have to do this to access them:

``` r
argonAvatar(
  size = "sm",
  src = "images/undraw_profile-pic_fatv.svg"
)
```

### Vertical layout

<br>
<img src="man/figures/argonDashDemo.png" alt="argon dashboard demo with vertical layout">

### Horizontal layout

This layout is experimental.

<br>
<img src="man/figures/argonDashDemo_horizontal.png" alt="argon dashboard demo with horizontal layout">

## Aknowledgement

- [Creative Tim](https://www.creative-tim.com/) for designing the
  original argon dashboard HTML template.

## Code of Conduct

Please note that the argonDash project is released with a [Contributor
Code of
Conduct](https://contributor-covenant.org/version/2/0/CODE_OF_CONDUCT.html).
By contributing to this project, you agree to abide by its terms.
