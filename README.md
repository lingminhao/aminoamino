
<!-- README.md is generated from README.Rmd. Please edit that file -->

Version: 1.0.0

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

|     | amino |
|:----|:------|
| UUU | F     |
| CUU | L     |
| AUU | I     |
| GUU | V     |
| UUC | F     |
| CUC | L     |
| AUC | I     |
| GUC | V     |
| UUA | L     |
| CUA | L     |
| AUA | I     |
| GUA | V     |
| UUG | L     |
| CUG | L     |
| AUG | M     |
| GUG | V     |
| UCU | S     |
| CCU | P     |
| ACU | T     |
| GCU | A     |
| UCC | S     |
| CCC | P     |
| ACC | T     |
| GCC | A     |
| UCA | S     |
| CCA | P     |
| ACA | T     |
| GCA | A     |
| UCG | S     |
| CCG | P     |
| ACG | T     |
| GCG | A     |
| UAU | Y     |
| CAU | H     |
| AAU | N     |
| GAU | D     |
| UAC | Y     |
| CAC | H     |
| AAC | N     |
| GAC | D     |
| UAA | Stop  |
| CAA | Q     |
| AAA | K     |
| GAA | E     |
| UAG | Stop  |
| CAG | Q     |
| AAG | K     |
| GAG | E     |
| UGU | C     |
| CGU | R     |
| AGU | S     |
| GGU | G     |
| UGC | C     |
| CGC | R     |
| AGC | S     |
| GGC | G     |
| UGA | Stop  |
| CGA | R     |
| AGA | R     |
| GGA | G     |
| UGG | W     |
| CGG | R     |
| AGG | R     |
| GGG | G     |

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
