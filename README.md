
<!-- README.md is generated from README.Rmd. Please edit that file -->

NOTE: This is a toy package created for expository purposes. It is not
meant to actually be useful.

# aminoamino

<!-- badges: start -->
<!-- badges: end -->

The goal of aminoamino is to automate the conversion from DNA to RNA,
and from RNA to Amino Acid.

## Installation

You can install the development version of aminoamino from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("lingminhao/aminoamino")
```

## Usage

First, load the package.

``` r
library(aminoamino)
```

A common process in genomics is conversion from DNA to RNA. DNA consists of a
combination of 4 different nucleotide bases A, C, T and G. For example,
ACTTTAAGC is a DNA string.

The conversion from DNA to RNA replaces every T base to a U base. We provide this functionality in this package:

``` r
dna <- "ACTTTAAGC"
transcription(dna)
#> [1] "ACUUUAAGC"
```
