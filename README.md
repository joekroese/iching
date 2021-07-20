
<!-- README.md is generated from README.Rmd. Please edit that file -->

# iching

<!-- badges: start -->
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
#> 1     8
#> 2     7
#> 3     8
#> 4     9
#> 5     7
#> 6     7
```
