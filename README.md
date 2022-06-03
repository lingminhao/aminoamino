
<!-- README.md is generated from README.Rmd. Please edit that file -->

Version: 1.0.0

NOTE: This is a toy toy package created for expository purposes. It is
not meant to actually be useful.

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

A common process in genomics is DNA to RNA conversion. DNA consists of a
combination of 4 different nucleotide bases A, C, T and G. For example,
ACTTTAAGC is a DNA string.

The conversion from DNA to RNA is basically replacing the T base to a U
base. We provide this functionality in this package:

``` r
dna <- "ACTTTAAGC"
transcription(dna)
#> [1] "ACUUUAAGC"
```

Another important process is the conversion from RNA to Amino acid. A
codon is a 3-mers in a RNA string. Each codon will be converted into an
amino code. The conversion table is shown below:

| x                                                                                                         |
|:----------------------------------------------------------------------------------------------------------|
| C:/Users/lingmh/AppData/Local/Temp/RtmpqwrWW8/temp_libpath39284fb42240/aminoamino/extdata/codon_table.txt |

For example, the RNA string
AUGGCCAUGGCGCCCAGAACUGAGAUCAAUAGUACCCGUAUUAACGGGUGA will be converted
into MAMAPRTEINSTRING using

``` r
rna <- "AUGGCCAUGGCGCCCAGAACUGAGAUCAAUAGUACCCGUAUUAACGGGUGA"
translation(rna)
#> [1] "MAMAPRTEINSTRING"
```

Note that if the codon maps to Stop, this mean the translation process
terminates immediately. For example,

``` r
translation("AUGUGAAUGGCGCCCAGAACUGAGAUCAAUAGUACCCGUAUUAACGGGUGA")
#> [1] "M"
```
