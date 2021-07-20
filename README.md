
<!-- README.md is generated from README.Rmd. Please edit that file -->

# iching

<!-- badges: start -->

[![R-CMD-check](https://github.com/joekroese/iching/workflows/R-CMD-check/badge.svg)](https://github.com/joekroese/iching/actions)
<!-- badges: end -->

The iching package is for consulting the I Ching from within R.

## Installation

You can install the development version from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("joekroese/iching")
```

## Example

You can generate a hexagram in one line.

``` r
library(iching)
generate_hexagram()
#> # A tibble: 6 x 1
#>    line
#>   <dbl>
#> 1     7
#> 2     8
#> 3     8
#> 4     9
#> 5     8
#> 6     9
```
